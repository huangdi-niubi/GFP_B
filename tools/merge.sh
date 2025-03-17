#!/bin/bash

# 定义目标目录
TARGET_DIR="./PUBG_unpack/"

# 定义输出文件（以 .uexp 结尾）
OUTPUT_FILE="./PUBG_pak/merged_output.uexp"

# 清空输出文件（如果存在）
> "$OUTPUT_FILE"

# 递归查找所有 .uexp 文件并合并
find "$TARGET_DIR" -type f -name "*.uexp" -print0 | sort -z | xargs -0 cat >> "$OUTPUT_FILE"

echo "所有 .uexp 文件已合并到 $OUTPUT_FILE"
