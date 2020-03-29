<template>
    <div class="categories">
        <v-btn icon>
            <v-icon>
                mdi-plus
            </v-icon>
        </v-btn>
        <div v-for="category in categories" :key="category.id" 
             class="category" :style="{ backgroundColor: category.color }">
            {{ category.title }}
        </div>
    </div>
</template>

<script lang="ts">
import Vue from 'vue';
import { Category } from '@/models/Category';

export default Vue.extend({
    data() {
        return {
            categories: []  as Category[]
        }
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

<style scoped>
    .categories {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 90%;
    }
    .category {
        border-radius: 10%;
        width: 10%;
        padding: 1% 0;
        text-align: center;
    }
</style>