import gql from "graphql-tag";

export const AllUsers = gql`
query AllUsers {
  allUsers {
    nodes {
      id
      name
      userName
      lastFoodOrder
      birthday
      nodeId
      password
    }
  }
}`;
