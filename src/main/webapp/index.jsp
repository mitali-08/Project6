<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fibonacci Series Generator</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        input {
            padding: 10px;
            width: calc(100% - 22px);
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            padding: 10px;
            background-color: #2874f0;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #1a58b8;
        }
        .result {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Fibonacci Series Generator</h2>
        <input type="number" id="numTerms" placeholder="Enter number of terms" min="1">
        <button onclick="generateFibonacci()">Generate</button>
        <div class="result" id="result"></div>
    </div>

    <script>
        function generateFibonacci() {
            const numTerms = document.getElementById('numTerms').value;
            const resultDiv = document.getElementById('result');

            if (numTerms <= 0) {
                resultDiv.innerText = 'Please enter a positive number.';
                return;
            }

            let fibonacciSeries = [];
            let a = 0, b = 1;

            for (let i = 0; i < numTerms; i++) {
                fibonacciSeries.push(a);
                let next = a + b;
                a = b;
                b = next;
            }

            resultDiv.innerText = 'Fibonacci Series: ' + fibonacciSeries.join(', ');
        }
    </script>
</body>
</html>

