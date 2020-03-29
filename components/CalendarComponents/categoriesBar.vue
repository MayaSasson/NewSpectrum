<template>
    <div class="categories">
        <v-btn icon class="add-button">
            <v-icon color="black">
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
import { AllCategories } from "~/queries/Categories";

export default Vue.extend({
    apollo: {
        allCategories: {
            query: AllCategories
        }
    },
    computed: {
        categories(): Category[] {
            return this.$data.allCategories.nodes.map((category: any) => {
                return {
                   id: category.id,
                   color: category.color,
                   title: category.title
                }
            })
        }
    }
})
</script>

<style scoped>
    .add-button {
        border: solid black 1px;
        height: 5vh;
        width: 5vh;
    }
    .categories {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 90%;
        background-color: white;
        border: solid black 1px;
        padding: 1vh 0;
    }
    .category {
        font-weight: bold;
        border-radius: 9%;
        border: solid black 1px;
        width: 10%;
        padding: 1% 0;
        text-align: center;
        margin-right: 1%;
    }
</style>
