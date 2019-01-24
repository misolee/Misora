export const fetchReview = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/reviews/${id}`
  })
);

export const createReview = (review) => (
  $.ajax({
    method: 'POST',
    url: 'api/reviews',
    data: { review }
  })
);

export const editReview = (review) => (
  $.ajax({
    method: 'PATCH',
    url: `api/reviews/${id}`,
    data: { review }
  })
);

export const deleteReview = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/reviews/${id}`
  })
);

