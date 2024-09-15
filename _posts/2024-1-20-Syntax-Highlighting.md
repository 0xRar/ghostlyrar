---
title: "Syntax Highlighting"
layout: post
description: "This blog post will show the syntax highlighting in codeblocks"
author: "0xRar"
toc: true
---

And remember the syntax highlighting theme can always be changed.

## Python
```python
def main():
    name = input('What is your name?: ')
    
    if name != "":
        print(f'Hello {name}')
    else:
        print('Please enter a name :)')

if __name__ == '__main__':
    main()
```

## C++
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string name;
    
    cout << "What is your name?: ";
    getline(cin, name);
    
    if (!name.empty()) {
        cout << "Hello, " << name << endl;
    } else {
        cout << "Please enter a name" << endl;
    }
    
    return 0;
}
```

## Go
```go
package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter your name: ")
	name, _ := reader.ReadString('\n')
	name = strings.TrimSpace(name)

	if name != "" {
		fmt.Printf("Hello, %s!\n", name)
	} else {
		fmt.Println("Please enter a name.")
	}
}
```

## Rust
```rust
use std::io;

fn main() {
    let mut name = String::new();

    println!("Enter your name:");
    io::stdin().read_line(&mut name).expect("Failed to read input");
    name = name.trim().to_string();

    if !name.is_empty() {
        println!("Hello, {}!", name);
    } else {
        println!("Please enter a name.");
    }
}
```

## Javascript
```js
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Enter your name: ', (name) => {
  name = name.trim();

  if (name !== '') {
    console.log(`Hello, ${name}!`);
  } else {
    console.log('Please enter a name.');
  }

  rl.close();
});
```

## Java
```java
import java.util.Scanner;

public class GreetingProgram {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your name: ");
        String name = scanner.nextLine().trim();

        if (!name.isEmpty()) {
            System.out.println("Hello, " + name + "!");
        } else {
            System.out.println("Please enter a name.");
        }

        scanner.close();
    }
}
```
