// Toggles buttons for clickbox
$(document).ready(function () {
  $("#datetimepicker").datetimepicker({
    inline: true,
    sideBySide: true,
  });
  $("#btn-date").click(function () {
    $(this).button("toggle");
    // $("#datetimepicker").datetimepicker("show");
  });
});
