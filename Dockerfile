# สร้าง image ของ node-mongo

# คำสั่งเมื่อ run container ของ nodejs
FROM node:10

# ลง dependencies ไว้ในนี้
WORKDIR /urs/src/app

# copy package.json และ package-lock.json ไปไว้ใน /app
COPY package*.json ./

RUN npm install 

# copy ในโฟลเดอร์ปัจจุบันใน host ไปไว้ใน container 
COPY . .

# PORT ของ nodejs เซตไว้ที่ port 3000
EXPOSE 3000

# command ของ nodejs สั่ง run
CMD ["npm", "start"]