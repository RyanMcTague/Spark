#include <gtest/gtest.h>
#include <spark/version.h>

TEST(Spark, ExpectedVersion){
    EXPECT_STREQ(SPARK_VERSION, "1.0.0");
}

int main(int argc, char **argv){
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}