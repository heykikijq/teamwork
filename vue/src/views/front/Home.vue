<template>
  <div class="main-content">
    <div style="width: 75%; margin: 10px auto; min-height: 1000px">
      <div style="display: flex; height: 100px">
        <div style="width: 200px; height: 250px; border: 1px solid #cccccc; border-radius: 5px; padding: 10px">
          <el-row :gutter="10">
            <el-col :span="8" style="padding: 0 5px; cursor: pointer; margin-bottom: 5px" v-for="item in baseTypeData">
              <img :src="item.img" alt="" style="width: 50px" @click="navTo('/front/teacherType?typeName=' + item.name)">
              <div style="font-size: 12px; text-align: center">{{ item.name }}</div>
            </el-col>
          </el-row>
        </div>
        <div style="flex: 1; height: 250px; margin: 0 10px; border-radius: 5px">
          <el-carousel height="250px" style="border-radius: 5px">
            <el-carousel-item v-for="item in carouselData">
              <img :src="item" alt="" style="width: 100%; height: 250px; border-radius: 5px">
            </el-carousel-item>
          </el-carousel>
        </div>
        <div style="width: 230px; height: 250px; border: 1px solid #cccccc; border-radius: 5px; text-align: center; padding: 30px 0">

          <div style="margin-top: 15px">
            <el-button style="padding: 10px 50px" type="success" @click="$router.push('/login?role=USER')">家长登录</el-button>
          </div>
          <div style="margin-top: 10px">
            <el-button style="padding: 10px 50px" type="danger" @click="$router.push('/login?role=TEACHER')">教员登录</el-button>
          </div>
        </div>
      </div>
      <div style="display: flex; height: 100px; margin-top: 160px">
        <div style="width: 200px; height: 170px; border: 1px solid #cccccc; border-radius: 5px; padding: 10px">
          <el-row :gutter="10">
            <el-col :span="8" style="padding: 0 5px; cursor: pointer; margin-bottom: 5px" v-for="item in excellentTypeData">
              <img :src="item.img" alt="" style="width: 50px">
              <div style="font-size: 12px; text-align: center">{{ item.name }}</div>
            </el-col>
          </el-row>
        </div>
      </div>
      <div style="margin-top: 100px; border-left: 5px solid #71d5a1; font-size: 20px; padding: 5px 10px; font-weight: bold">
        平台教员
      </div>

    </div>
  </div>
</template>


<style>
.card {
  padding: 5px;
  cursor: pointer;
  transition: all 0.3s ease; /* 添加平滑过渡效果 */
}

.card:hover {
  background-color: #dbf1e1;
  transform: scale(1.1); /* 鼠标悬停时放大图片 */
}

</style>