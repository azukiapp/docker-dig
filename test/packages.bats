#!/usr/bin/env bats

load ./test_helper

image_name="azukiapp/dig"
 image_tag="0.2.0"
image="${image_name}:${image_tag}"

bind_version="9.1.3"

@test "should `bind` intalled" {
  run ${DOCKER} run ${image} apk info -v
  assert_success
  assert_match "bind-${bind_version}"
}

drill_version="1.6.17"

@test "should `drill` intalled" {
  run ${DOCKER} run ${image} apk info -v
  assert_success
  assert_match "drill-${drill_version}"
}

@test "should `drill` version" {
  run ${DOCKER} run ${image} drill -v
  assert_success
  assert_match "drill version ${drill_version}"
}

@test "should `nslookup` version" {
  run ${DOCKER} run ${image} nslookup -v
  assert_success
}

@test "should `dig` version" {
  run ${DOCKER} run ${image} dig -v
  assert_success
}

@test "cache is empty" {
  run ${DOCKER} run ${image} sh -c "ls -1 /var/cache/apk | wc -l"
  assert_success
  [ "${lines[@]: -1}" = "0" ]
}
