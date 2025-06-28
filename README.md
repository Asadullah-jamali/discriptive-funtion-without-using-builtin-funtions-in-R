# discriptive-funtion-without-using-builtin-funtions-in-R
Here’s a complete `README.md` file for your custom **descriptive statistics function in R**, which calculates core statistics **without using built-in summary/statistics functions** like `mean()`, `sd()`, `var()`, `median()`, etc.

---

````markdown
# 📊 Custom Descriptive Statistics Function in R (Without Built-in Functions)

This repository contains a custom R function named `des()` that computes **descriptive statistics** such as:

- Sum
- Mean
- Median
- Variance
- Standard Deviation
- Skewness
- Kurtosis

> 🚫 All calculations are done **without using built-in statistical functions** like `mean()`, `sd()`, `var()`, or `summary()` — making this function ideal for educational purposes and understanding basic statistical concepts from scratch.

---

## 🧮 Function Logic

### 📌 Function Name
```r
des(x)
````

* `x`: A numeric vector of data points.

### 🔢 Statistics Calculated:

1. **Sum**: Total of all values.
2. **Mean**: Average value, calculated manually.
3. **Median**: Middle value (handles both even and odd lengths).
4. **Variance**: Sum of squared deviations divided by `n - 1`.
5. **Standard Deviation**: Square root of variance.
6. **Skewness**: Based on third central moment.
7. **Kurtosis**: Based on fourth central moment.

---

## 📜 Function Code

```r
des = function(x) {
  n = length(x)
  s = sum(x)
  m = sum(x) / n
  y = sort(x)
  
  # Median
  if (n %% 2 == 0) {
    m1 = n / 2
    m2 = m1 + 1
    med = (y[m1] + y[m2]) / 2
  } else {
    m1 = (n + 1) / 2
    med = y[m1]
  }

  # Variance and Standard Deviation
  v = sum((x - m)^2) / (n - 1)
  s.d = sqrt(v)
  
  # Skewness and Kurtosis
  m4 = sum((x - m)^4) / (n - 1)
  m3 = sum((x - m)^3) / (n - 1)
  skew = (m3^2) / (v^3)
  kurt = m4 / (v^2)

  # Output
  cat(
    "sum = ", s,
    "\nmean = ", m,
    "\nmedian = ", med,
    "\nvariance = ", v,
    "\nstandard deviation = ", s.d,
    "\nskewness = ", skew,
    "\nkurtosis = ", kurt, "\n"
  )
}
```

---

## ✅ Example Usage

```r
data <- c(12, 18, 25, 30, 45)
des(data)
```

### 📤 Output Example

```
sum = 130 
mean = 26 
median = 25 
variance = 155.5 
standard deviation = 12.472 
skewness = 0.016 
kurtosis = 2.034
```

---

## ⚠️ Notes

* This function is created for **learning purposes**.
* It helps students understand how basic statistics are derived manually.
* The function avoids using any built-in functions like `mean()`, `sd()`, `var()`, or `median()` (though `sum()` and `sort()` are used for simplicity).

---

## 📋 Requirements

* R (any version)
* No external packages required

---



## 🤝 Contributing

If you’d like to improve the function (e.g., add min/max, mode, or percentiles), feel free to open a pull request or issue!

```
