/**
 * @file main.c
 * @author reztib
 * @brief beep
 * @version 1.0
 * @date 2024-09-08
 * 
 * @copyright Copyright (c) 2024
 * 
 */
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
