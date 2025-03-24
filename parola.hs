import System.Random
import Data.Char (chr)

-- Generează un caracter aleatoriu dintr-un interval dat
randomChar :: (Int, Int) -> IO Char
randomChar range = do
    n <- randomRIO range
    return (chr n)

-- Generează o parolă de lungime dată
generatePassword :: Int -> IO String
generatePassword len = sequence $ replicate len (randomChar (33, 126))

main :: IO ()
main = do
    putStrLn "Introduceti lungimea parolei:"
    lenStr <- getLine
    let len = read lenStr :: Int
    password <- generatePassword len
    putStrLn $ "Parola generata: " ++ password
    putStrLn "Apasati Enter pentru a iesi."
    _ <- getLine --Asteapta input pentru inchiderea programului
    return () 
