# Folders
$folders = @(
    "data",
    "stage1_pytorch",
    "stage2_forward_numpy",
    "stage3_full_numpy",
    "utils",
    "notebooks"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
}

# Files
$files = @(
    "stage1_pytorch\model.py",
    "stage1_pytorch\train.py",

    "stage2_forward_numpy\layers.py",
    "stage2_forward_numpy\verify.py",

    "stage3_full_numpy\layers.py",
    "stage3_full_numpy\im2col.py",
    "stage3_full_numpy\optimizer.py",
    "stage3_full_numpy\train.py",

    "utils\metrics.py",

    "notebooks\visualize_filters.ipynb",

    "README.md"
)

foreach ($file in $files) {
    New-Item -ItemType File -Path $file -Force | Out-Null
}

Write-Host "CNN from Scratch project structure created!"