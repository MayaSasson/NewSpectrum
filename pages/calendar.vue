<template>
  <v-layout
    column
    justify-center
    align-center
  >
    <categories-bar :categories="categories" />
  </v-layout>
</template>

<script lang="ts">
import Vue from 'vue';
import CategoriesBar from '@/components/CalendarComponents/categoriesBar.vue';

export default Vue.extend({
    components: {
        CategoriesBar
    },  
})
</script>
