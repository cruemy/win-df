# struct Employee{
#   yearly_salary: f64,
#   daily_salary: f64,
#   worked_days: f64
# }


function ptu{
  param(
    [double]$utility,
    [double]$uma
  )

  [object[]] $employees = get_employees()

  $uf = $utility
  $fd = uf/2
  $fdi = uf/get_sdt()
  $fds = uf/get_sst()

  foreach($e in $employees){
    distribution_by_e($e);
    perception($e);
    isr($e);
    total($e);
  }
}

script:function get_employees{}

script:function get_sdt{}

script:function get_sst{}









