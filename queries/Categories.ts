import gql from 'graphql-tag';

export const AllCategories = gql`
query AllCategories {
  allCategories {
    nodes {
      id
      title
      color
    }
  }
}
`;
