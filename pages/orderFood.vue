<template>
  <v-layout
    column
    justify-center
    align-center
  >
    <v-flex
      xs12
      sm8
      md6
    >
        <OrderFoodCard/>
    </v-flex>
  </v-layout>
</template>

<script>
    import OrderFoodCard from "../components/OrderFoodComponents/orderFoodCard";
    export default {
        components: {OrderFoodCard},
    }
</script>
