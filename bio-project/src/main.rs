use std::io::stdin;
use std::fs::File;
use std::io::prelude::*;

fn main() {
    println!("Type in \"P\" if you want the Photosynthesis contents to be displayed first (this is reccommended),\nor type in \"CR\" for Cellular Respiration contents;");
    println!("SIDE NOTE:\nThere are also ascii images able to be viewed that are related to photosynthesis & cellular respiration!\nType in \"pic\" for more information");

    loop {
        let mut res = String::new();
        stdin()
            .read_line(&mut res)
            .expect("Error Reading Name");
        match res.trim() {
            "P" | "p" => { print_photosynthesis(); again(); },
            "CR" | "cr" => { print_cr(); again(); },
            "pic" | "Pic" | "PIC" => { print_pics(); again(); },
            _ => println!("Invalid Value!\nRerun the program to try again..."),
        }
        break;
    }
}

fn again() {
    println!("Options (Ctrl + C to exit):\n\"P\" = Photosynthesis Information\n\"CR\" = Cellular Respiration Information\n\"pic\" = Render a biology related image");
    loop {
        let mut res = String::new();
        stdin()
            .read_line(&mut res)
            .expect("Error Reading Name");
        match res.trim() {
            "P" | "p" => { print_photosynthesis(); again(); },
            "CR" | "cr" => { print_cr(); again(); },
            "pic" | "Pic" | "PIC" => { print_pics(); again(); },
            _ => println!("Invalid Value!\nRerun the program to try again..."),
        }
        break;
    }
}

fn print_photosynthesis() -> String {
    let mut p_file = File::open("docs/photosynthesis.txt")
        .expect("Could not find specified file!\nTry creating that file or double-check your spelling.");
    let mut file_data = String::new();
    p_file.read_to_string(&mut file_data)
        .expect("Error reading file");
    println!("{file_data}");
    file_data
}

fn print_cr() -> String {
    let mut cr_file = File::open("docs/cellular_respiration.txt")
        .expect("Could not find specified file!\nTry creating that file or double-check your spelling.");
    let mut file_data = String::new();
    cr_file.read_to_string(&mut file_data)
        .expect("Error reading file");
    println!("{file_data}");
    file_data
}

fn print_pics() {
    // Photosynthesis
    let mut p_cycle = File::open("docs/ascii/p_cycle.txt")
        .expect("Could not find specified file!\nTry creating that file or double-check your spelling.");
    let mut flower = File::open("docs/ascii/flower.txt")
        .expect("Could not find specified file!\nTry creating that file or double-check your spelling.");
    let mut sun = File::open("docs/ascii/sun.txt")
        .expect("Could not find specified file!\nTry creating that file or double-check your spelling.");
    // Cellular Respiration
    let mut mitochondria = File::open("docs/ascii/mitochondria.txt")
        .expect("Could not find specified file!\nTry creating that file or double-check your spelling.");
    let mut glucose = File::open("docs/ascii/glucose.txt")
        .expect("Could not find specified file!\nTry creating that file or double-check your spelling.");

    println!("You chose to render a picture!\nHere are your options:\n\"F\" = Flower\n\"S\" = Sun\n\"P\" = Photosynthesis Cycle\n\"M\" = Mitochondria\n\"G\" = Glucose");
    loop {
        let mut res = String::new();
        stdin()
            .read_line(&mut res)
            .expect("Error Reading Name");
        match res.trim() {
            "P" | "p" => {
                let mut file_data = String::new();
                p_cycle.read_to_string(&mut file_data)
                       .expect("Error reading file");
                println!("{file_data}");
            },
            "F" | "f" => {
                let mut file_data = String::new();
                flower.read_to_string(&mut file_data)
                       .expect("Error reading file");
                println!("{file_data}");
            },
            "S" | "s" => {
                 let mut file_data = String::new();
                sun.read_to_string(&mut file_data)
                       .expect("Error reading file");
                println!("{file_data}");
            },
            "M" | "m" => {
                let mut file_data = String::new();
                mitochondria.read_to_string(&mut file_data)
                       .expect("Error reading file");
                println!("{file_data}");
            },
            "G" | "g" => {
                let mut file_data = String::new();
                glucose.read_to_string(&mut file_data)
                       .expect("Error reading file");
                println!("{file_data}");
            },
            _ => println!("Invalid Value!\nRerun the program to try again..."),
        }
        break;
    }
    again();
}
