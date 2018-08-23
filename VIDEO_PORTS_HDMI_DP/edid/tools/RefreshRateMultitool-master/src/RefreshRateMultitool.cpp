#include <cstdio>
#include <cstdlib>
#include <sstream>
#include <GL/glfw.h>

const char * szTitle = "RefreshRateMultitool, Version 0.12";
#define DEFAULT_WIDTH 320
#define DEFAULT_HEIGHT 200

volatile bool running = true;

void GLFWCALL ProcessKey(int nKey, int nAction)
{
	if (GLFW_RELEASE == nAction)
	{
		running = false;
	}
}

void GLFWCALL ProcessWindowSize(int nWindowWidth, int nWindowHeight)
{
	//printf("Window size set to %dx%d.\n", nWindowWidth, nWindowHeight);

	glViewport(0, 0, nWindowWidth, nWindowHeight);

	/*glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45, static_cast<double>(nViewportWidth) / nViewportHeight, 0.1, 100);
	//glOrtho(-8, 8, -5, 5, 0, 100);
	glMatrixMode(GL_MODELVIEW);*/
}

int main(int argc, char * argv[])
{
	printf("%s\n", szTitle);
	printf("\n");
	printf("WARNING: This application will produce FLASHING IMAGES to test your screen(s)!\n");
	printf("\n");
	printf("If getting a seizure is a risk for you, close this window and do not proceed.\n");
	printf("If you take the responsibility upon yourself, enter the two words 'I agree' and\n");
	printf("press enter.\n");
	printf("\n");
	printf("Once started, press any key to quit.\n");
	printf("\n");

	char userText[100];
	std::fgets(userText, 10, stdin);

	// Initialize GLFW
	glfwInit();

	if (false == (strcmp(userText, "I agree\n")   == 0 || strcmp(userText, "i agree\n")   == 0
			   || strcmp(userText, "\'I agree\'") == 0 || strcmp(userText, "\'i agree\'") == 0
			   || strcmp(userText, "\"I agree\"") == 0 || strcmp(userText, "\"i agree\"") == 0))
	{
		printf("It appears you do not agree; exiting...\n");
		glfwSleep(1);

		return 0;
	}

	unsigned int counter = 0;
	//const int nRefreshRate = 60;
	int nColumns = 6;
	int nRows = 1;//nRefreshRate / nColumns;
	if (argc >= 3)
	{
		nColumns = std::atoi(argv[1]);
		nRows = std::atoi(argv[2]);
	}
	const double dWidth = 1.0 / nColumns;
	const double dHeight = 1.0 / nRows;

	GLFWvidmode oDesktopMode;
	glfwGetDesktopMode(&oDesktopMode);

	// Open an OpenGL window
	// GLFW_WINDOW GLFW_FULLSCREEN
	//if (!glfwOpenWindow(1920, 1200, 8, 8, 8, 0, 0, 0, GLFW_FULLSCREEN))
	if (!glfwOpenWindow(DEFAULT_WIDTH, DEFAULT_HEIGHT, 8, 8, 8, 0, 0, 0, GLFW_WINDOW))
	{
		glfwTerminate();
		return 0;
	}
	glfwSetWindowTitle(szTitle);
	glfwSetWindowPos((oDesktopMode.Width - DEFAULT_WIDTH) / 2, (oDesktopMode.Height - DEFAULT_HEIGHT) / 2);
	std::stringstream x;
	x << "\nDesktop Mode: " << oDesktopMode.Width << "x" << oDesktopMode.Height << "/" << (oDesktopMode.RedBits+oDesktopMode.GreenBits+oDesktopMode.BlueBits) << "bpp @ " << glfwGetWindowParam(GLFW_REFRESH_RATE) << " Hz vertical Refresh Rate.\n\n"
	  << "CPU Count: " << glfwGetNumberOfProcessors()
	  << "\nGL Renderer: " << glGetString(GL_VENDOR) << " " << glGetString(GL_RENDERER) << " v" << glGetString(GL_VERSION)
	  << "\nGLFW_ACCELERATED: " << glfwGetWindowParam(GLFW_ACCELERATED)
	  << "\nGLFW_RED_BITS: " << glfwGetWindowParam(GLFW_RED_BITS)
	  << "\nGLFW_GREEN_BITS: " << glfwGetWindowParam(GLFW_GREEN_BITS)
	  << "\nGLFW_BLUE_BITS: " << glfwGetWindowParam(GLFW_BLUE_BITS)
	  << "\nGLFW_ALPHA_BITS: " << glfwGetWindowParam(GLFW_ALPHA_BITS)
	  << "\nGLFW_DEPTH_BITS: " << glfwGetWindowParam(GLFW_DEPTH_BITS)
	  << "\nGLFW_STENCIL_BITS: " << glfwGetWindowParam(GLFW_STENCIL_BITS)
	  << "\nGLFW_REFRESH_RATE: " << glfwGetWindowParam(GLFW_REFRESH_RATE)
	  << "\nGLFW_FSAA_SAMPLES: " << glfwGetWindowParam(GLFW_FSAA_SAMPLES);
	printf("%s\n\n", x.str().c_str());

	glfwSwapInterval(1);		// Turn V-Sync on

	glfwSetWindowSizeCallback(&ProcessWindowSize);
	glfwSetKeyCallback(&ProcessKey);

	// Setup some OpenGL properties
	{
		glLineWidth(10.0f);
		glClearColor(0, 0, 0, 1);
		glColor3d(1, 1, 1);

		glTranslatef(-1, -1, 0);
		glScalef(2, 2, 1);
	}

	double startup = 0.300;

	// Main loop
	while (running && glfwGetWindowParam(GLFW_OPENED))
	{
		// OpenGL rendering goes here...
		glClear(GL_COLOR_BUFFER_BIT);

		counter = (++counter) % (nColumns * nRows);

		glBegin(GL_LINES);
		for (int c = 0; c <= nColumns; ++c) {
			glVertex2d(double(c) / nColumns, 0);
			glVertex2d(double(c) / nColumns, 1);
		}
		for (int r = 0; r <= nRows; ++r) {
			glVertex2d(0, double(r) / nRows);
			glVertex2d(1, double(r) / nRows);
		}
		glEnd();

		glBegin(GL_QUADS);
			double x = double(counter % nColumns) / nColumns;
			double y = 1 - double(counter / nColumns) / nRows;
			glVertex2d(x, y);
			glVertex2d(x + dWidth, y);
			glVertex2d(x + dWidth, y - dHeight);
			glVertex2d(x, y - dHeight);
		glEnd();

		// Swap front and back rendering buffers
		glfwSwapBuffers();
		if (startup >= 0.001) {
			glfwSleep(startup);
			startup *= 0.9;
		}
	}

	// Close window and terminate GLFW
	glfwTerminate();

	// Exit program
	return 0;
}
