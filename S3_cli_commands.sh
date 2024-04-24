#commands to add JSON and CSV data to the unique S3 bucket

# Connect to aws and fill credentials
aws configure

# List all the S3 buckets (will run into error if there are no buckets)
aws s3 ls

# To copy all JSON Reference data to S3 bucket at same location:

# Traverse to root directory to location of json files to upload

aws s3 cp . s3://ameya-test-bucket/youtube/raw_statistics_reference_data/ --recursive --exclude "*" --include "*.json"

# To copy all data files to its own location, following Hive-style patterns:

aws s3 cp CAvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=ca/
aws s3 cp DEvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=de/
aws s3 cp FRvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=fr/
aws s3 cp GBvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=gb/
aws s3 cp INvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=in/
aws s3 cp JPvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=jp/
aws s3 cp KRvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=kr/
aws s3 cp MXvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=mx/
aws s3 cp RUvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=ru/
aws s3 cp USvideos.csv s3://ameya-test-bucket/youtube/raw_statistics/region=us/