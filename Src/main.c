/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dma.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stm32f4_discovery_audio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
#define AUDIO_BUFFER_SIZE 4096
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
volatile unsigned int isHalfBuffer = 0u;
volatile unsigned int isFullBuffer = 0u;
volatile unsigned int audioErrorCb = 0u;
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SPI1_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

  static const char *const data = "STM32F4 Discovery Started!\n";
  HAL_UART_Transmit(&huart2, data, strlen(data), 100u);

  // DEFAULT_AUDIO_IN_FREQ, DEFAULT_AUDIO_IN_BIT_RESOLUTION, DEFAULT_AUDIO_IN_CHANNEL_NBR
  if (BSP_AUDIO_IN_Init(16000u, 16u, 0u) != AUDIO_OK)
  {
    static const char *const ErrMsgAudioInitFailed = "BSP_AUDIO_IN_Init() -> [FAILED]\n";
    HAL_UART_Transmit(&huart2, ErrMsgAudioInitFailed, strlen(ErrMsgAudioInitFailed), 100u);
  }
  else
  {
    static const char *const ErrMsgAudioInitOk = "BSP_AUDIO_IN_Init() -> [OK]\n";
    HAL_UART_Transmit(&huart2, ErrMsgAudioInitOk, strlen(ErrMsgAudioInitOk), 100u);
  }

  static volatile uint16_t audioBuffer[AUDIO_BUFFER_SIZE];
  BSP_AUDIO_IN_Record(audioBuffer, AUDIO_BUFFER_SIZE * 2);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */
    if (isHalfBuffer)
    {
      isHalfBuffer = 0u;
      //static char str_value[16];

      static const char *const msgHalfBuffer = "H\n";
      HAL_UART_Transmit(&huart2, msgHalfBuffer, strlen(msgHalfBuffer), 100u);

      /*
      for (unsigned int i = 0u; i < AUDIO_BUFFER_SIZE; ++i)
      {
        memset(str_value, 0, 16);
        itoa(audioBuffer[i], str_value, 10);
        HAL_UART_Transmit(&huart2, str_value, strlen(str_value), 100u);
        HAL_UART_Transmit(&huart2, " ", 1, 100u);
      }
      */
    }

    if (isFullBuffer)
    {
      //BSP_AUDIO_IN_Record(audioBuffer, AUDIO_BUFFER_SIZE * 2);

      isFullBuffer = 0u;
      //static char str_value[16];

      static const char *const msgFullBuffer = "F\n";
      HAL_UART_Transmit(&huart2, msgFullBuffer, strlen(msgFullBuffer), 100u);

      /*
      for (unsigned int i = 0u; i < AUDIO_BUFFER_SIZE; ++i)
      {
        memset(str_value, 0, 16);
        itoa(audioBuffer[i], str_value, 10);
        HAL_UART_Transmit(&huart2, str_value, strlen(str_value), 100u);
        HAL_UART_Transmit(&huart2, " ", 1, 100u);
      }
      */

      //BSP_AUDIO_IN_Record(audioBuffer, AUDIO_BUFFER_SIZE * 2);
    }

    if (audioErrorCb)
    {
      audioErrorCb = 0u;
      static const char *const msgAudioError = "Audio Error!\n";
      HAL_UART_Transmit(&huart2, msgAudioError, strlen(msgAudioError), 100u);
    }
    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
void BSP_AUDIO_IN_TransferComplete_CallBack(void)
{
  //SCB_InvalidateDCache();
  isFullBuffer = 1u;
}

void BSP_AUDIO_IN_HalfTransfer_CallBack(void)
{
  isHalfBuffer = 1u;
}

void BSP_AUDIO_IN_Error_Callback(void)
{
  audioErrorCb = 1u;
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
