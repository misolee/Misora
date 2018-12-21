export const fetchBasketItems = () => (
  $.ajax({
    method: 'GET',
    url: 'api/basket_items'
  })
);

export const createBasketItem = (basket_item) => (
  $.ajax({
    method: 'POST',
    url: 'api/basket_items',
    data: { basket_item }
  })
);
export const updateBasketItem = (basket_item) => (
  $.ajax({
    method: 'PATCH',
    url: `api/basket_items/${basket_item.id}`,
    data: { basket_item }
  })
);

export const deleteBasketItem = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/basket_items/${id}`
  })
);

export const deleteAllBasketItems = (basket_items) => (
  $.ajax({
    method: 'DELETE',
    url: 'api/basket_items',
    data: { basket_items }
  })
);