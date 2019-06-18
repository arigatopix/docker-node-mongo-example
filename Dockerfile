# สร้าง image ของ node app สุดท้าย run แล้วจะถามหา services ของ mongo (คนละ port)
# จะถูก map หากันด้วย docker-compose

# คำสั่งเมื่อ run container ของ nodejs
FROM node:10

# ลง dependencies ไว้ในนี้
WORKDIR /urs/src/app

# copy package.json และ package-lock.json ไปไว้ใน /app
COPY package*.json ./

# install dependencies ใน container
RUN npm install 

# copy ในโฟลเดอร์ปัจจุบันใน host ไปไว้ใน container 
COPY . .

# PORT ของ nodejs เซตไว้ที่ port 3000
EXPOSE 3000

# command ของ nodejs สั่ง run
CMD ["npm", "start"]