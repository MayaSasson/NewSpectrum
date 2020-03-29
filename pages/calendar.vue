<template>
  <v-layout
    column
    justify-center
    align-center
  >
    <categories-bar :categories="this.categories" />
  </v-layout>
</template>

<script lang="ts">
import Vue from 'vue';
import { Category } from '@/models/Category';
import CategoriesBar from '@/components/CalendarComponents/categoriesBar.vue';

export default Vue.extend({
    data() {
        return {
            categories: []  as Category[]
        }
    },
    components: {
        CategoriesBar
    },
    mounted() {
        this.categories.push({
            id: 1,
            title: 'בדיקה', 
            color: 'rgb(200, 150, 175)'
        });
    }
})
</script>
