function submitFormOnSelectChange() {
  const select = document.getElementById('variety-tag');
  if (select) {
    select.addEventListener("change", (event) => {
      event.currentTarget.parentElement.parentElement.submit();
    })
  }
  const select_price = document.getElementById('price-tag');
  if (select_price) {
    select.addEventListener("change", (event) => {
      event.currentTarget.parentElement.parentElement.submit();
    })
  }
}

export { submitFormOnSelectChange };
