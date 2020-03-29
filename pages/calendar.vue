<template>
  <v-layout
    column
    justify-center
    align-center
  >
    <categories-bar :categories="categories" />
    <v-calendar 
        style="width: 90%"
    />
  </v-layout>
</template>

<script lang="ts">
import Vue from 'vue';
import CategoriesBar from '@/components/CalendarComponents/categoriesBar.vue';

export default Vue.extend({
    data() {
        return {
            weekdays: [6, 5, 4, 3, 2, 1, 0]
        }
    },
    components: {
        CategoriesBar
    },  
})
</script>
