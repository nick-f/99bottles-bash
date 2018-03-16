#!/usr/bin/env bats

load test_helper
load 99bottles

@test "the first verse" {
    run verse 99
    assert_output "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall.\n"
}

@test "another verse" {
    run verse 3
    assert_output "3 bottles of beer on the wall, 3 bottles of beer.\nTake one down and pass it around, 2 bottles of beer on the wall.\n"
}

@test "verse 2" {
    run verse 2
    assert_output "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
}

@test "verse 1" {
    run verse 1
    assert_output "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n"
}

@test "a couple of verses" {
    run verses 99 98
    assert_output "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall.\n98 bottles of beer on the wall, 98 bottles of beer.\nTake one down and pass it around, 97 bottles of beer on the wall.\n"
}

@test "loop 1" {
    skip
    run loop 1
    assert_output "1"
}
