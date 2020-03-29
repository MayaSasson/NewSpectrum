<template>
    <div class="categories">
        <v-btn icon class="add-button">
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
    props: {
        categories: Object as () => { categories: Category[] }
    }
})
</script>

<style scoped>
    .add-button {
        border: solid black 1px;
    }
    .categories {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 90%;
    }
    .category {
        border-radius: 9%;
        border: solid black 1px;
        width: 10%;
        padding: 1% 0;
        text-align: center;
        margin-right: 1%;
    }
</style>