import Control.Concurrent (threadDelay) -- Import for sleep
import System.IO (hFlush, stdout) -- Import for flushing output

main :: IO ()
main = do
    putStrLn "Enter the number of beeps:" -- Prompt the user
    input <- getLine -- Read user input
    let count = read input :: Int -- Parse input to number
    mapM_ beep [1..count] -- Loop for the number of beeps

beep :: Int -> IO ()
beep i = do
    putStrLn $ "Beep number: " ++ show i -- Display current beep count
    putStr "\BEL" -- Produce beep sound
    hFlush stdout -- Flush output to make sure the beep is heard immediately
    threadDelay 1000000 -- Wait for 1 second (1,000,000 microseconds)
