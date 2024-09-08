#include <stdio.h>
#include <unistd.h>

int main() {
	int beeps;

	printf("how many beeps: ");
	scanf("%d", &beeps);

	for (int i = 1; i <= beeps; i++) {
		printf("\a");
		printf("%d \n", i);
		sleep(1);
	}

	return 0;
}
