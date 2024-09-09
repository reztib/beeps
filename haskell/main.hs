import Control.Concurrent (threadDelay)
import System.IO (hFlush, stdout)

main :: IO ()
main = do
    putStrLn "Enter the number of beeps:"
    input <- getLine
    let count = read input :: Int
    mapM_ beep [1..count]

beep :: Int -> IO ()
beep i = do
    putStrLn $ "Beep number: " ++ show i
    putStr "\BEL"
    hFlush stdout
    threadDelay 1000000
