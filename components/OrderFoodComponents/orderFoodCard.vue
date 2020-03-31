<template>
    <v-card>
        <v-img :src="require('@/assets/images/takeout-food.jpg')"
               height="30vh"
        />
        <v-container fill-height fluid>
            <v-layout fill-height>
                <v-flex xs12 align-end flexbox>
                    <span class="headline">הגיע הזמן לאכול.. בואו נזמין!</span>
                </v-flex>
            </v-layout>
        </v-container>
        <v-card-title>
            <v-row justify="space-around" >
                <v-progress-circular
                    indeterminate
                    color="amber"
                    v-if="$apollo.loading"
                ></v-progress-circular>
                <v-checkbox v-if="!$apollo.loading" v-for="user in users" v-model="selected" :label="user.name" :value="user.name"></v-checkbox>
            </v-row>
        </v-card-title>
        <v-divider/>
        <v-card-actions>
            סה"כ מזמינים : {{selected.length}}
        </v-card-actions>
    </v-card>
</template>

<script lang="ts">
    import {AllUsers} from "~/queries/Users";
    import User from "~/models/User";
    import Vue from 'vue';

    export default Vue.extend({
        apollo: {
            allUsers: {
                query: AllUsers
            }
        },
        data: () => ({
            selected: [],
        }),
        computed: {
            users(): User[] {
                if (this.$data.allUsers !== undefined)
                    return this.$data.allUsers.nodes;
                else
                    return [];
            }
        },
    })
</script>

<style scoped>

</style>
