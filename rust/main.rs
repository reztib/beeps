use std::io;
use std::thread::sleep;
use std::time::Duration;

fn main() {
    let mut input = String::new();
    println!("Enter the number of beeps:");
    io::stdin().read_line(&mut input).expect("Failed to read input");
    let count: u32 = input.trim().parse().expect("Please enter a valid number");

    for i in 1..=count {
        println!("Beep number: {}", i);
        print!("\x07");
        sleep(Duration::from_secs(1));
    }
}
