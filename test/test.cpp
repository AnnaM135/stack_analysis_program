#include <stdio.h>
#include <gtest/gtest.h>
#include "../src/main.h" 

// Test case for 0 and 1
TEST(TestSuite, Empty)
{
    EXPECT_EQ(f(), 0);
}
