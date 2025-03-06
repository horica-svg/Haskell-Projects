import System.Random
import Data.Char (chr)

-- Genereaza un caracter aleatoriu dintr-un interval dat
randomChar :: (Int, Int) -> IO Char
randomChar range = do
    n <- randomRIO range
    return (chr n)

-- Genereaza o parola de lungime dată
generatePassword :: Int -> IO String
generatePassword len = sequence $ replicate len (randomChar (33, 126))

main :: IO ()
main = do
    putStrLn "Introduceti lungimea parolei:"
    lenStr <- getLine
    let len = read lenStr :: Int
    password <- generatePassword len
    putStrLn $ "Parola generata: " ++ password
