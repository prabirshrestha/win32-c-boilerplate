#define WIN32_LEAN_AND_MEAN
#define _WIN32_WINNT 0x0500

#if _MSC_VER
#pragma comment(lib,"user32.lib")
#endif

#include <windows.h>

int
WINAPI WinMain(HINSTANCE hInstance,
               HINSTANCE hPrevInstance,
               LPSTR lpCmdLine,
               int nShowCmd) {
    MessageBox(NULL, "Hello world", "Greeting", MB_OK);
    return 0;
}
