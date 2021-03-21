defmodule ReportsGenFreelasTest do
  use ExUnit.Case

  describe "build/1" do
    test "builds the report" do
      filename = "report_test.csv"
      response = ReportsGenFreelas.build(filename)

      expected_response = %{
        "all_hours" => %{
          "Cleiton" => 4497,
          "Daniele" => 4428,
          "Danilo" => 4722,
          "Diego" => 4401,
          "Giuliano" => 4473,
          "Jakeliny" => 4656,
          "Joseph" => 4219,
          "Mayk" => 4404,
          "Rafael" => 4388,
          "Vinicius" => 4587
        },
        "hours_per_month" => %{
          "Cleiton" => %{
            "abril" => 346,
            "agosto" => 391,
            "dezembro" => 339,
            "fevereiro" => 385,
            "janeiro" => 376,
            "julho" => 355,
            "junho" => 392,
            "maio" => 410,
            "março" => 295,
            "novembro" => 374,
            "outubro" => 396,
            "setembro" => 438
          },
          "Daniele" => %{
            "abril" => 401,
            "agosto" => 343,
            "dezembro" => 342,
            "fevereiro" => 331,
            "janeiro" => 398,
            "julho" => 416,
            "junho" => 406,
            "maio" => 369,
            "março" => 427,
            "novembro" => 315,
            "outubro" => 319,
            "setembro" => 361
          },
          "Danilo" => %{
            "abril" => 463,
            "agosto" => 403,
            "dezembro" => 310,
            "fevereiro" => 428,
            "janeiro" => 348,
            "julho" => 399,
            "junho" => 317,
            "maio" => 458,
            "março" => 376,
            "novembro" => 362,
            "outubro" => 468,
            "setembro" => 390
          },
          "Diego" => %{
            "abril" => 398,
            "agosto" => 410,
            "dezembro" => 462,
            "fevereiro" => 322,
            "janeiro" => 353,
            "julho" => 383,
            "junho" => 317,
            "maio" => 355,
            "março" => 384,
            "novembro" => 324,
            "outubro" => 306,
            "setembro" => 387
          },
          "Giuliano" => %{
            "abril" => 431,
            "agosto" => 333,
            "dezembro" => 327,
            "fevereiro" => 380,
            "janeiro" => 378,
            "julho" => 375,
            "junho" => 411,
            "maio" => 417,
            "março" => 290,
            "novembro" => 368,
            "outubro" => 388,
            "setembro" => 375
          },
          "Jakeliny" => %{
            "abril" => 406,
            "agosto" => 333,
            "dezembro" => 385,
            "fevereiro" => 425,
            "janeiro" => 461,
            "julho" => 397,
            "junho" => 366,
            "maio" => 338,
            "março" => 406,
            "novembro" => 321,
            "outubro" => 414,
            "setembro" => 404
          },
          "Joseph" => %{
            "abril" => 301,
            "agosto" => 418,
            "dezembro" => 382,
            "fevereiro" => 327,
            "janeiro" => 339,
            "julho" => 388,
            "junho" => 367,
            "maio" => 351,
            "março" => 309,
            "novembro" => 300,
            "outubro" => 357,
            "setembro" => 380
          },
          "Mayk" => %{
            "abril" => 355,
            "agosto" => 356,
            "dezembro" => 406,
            "fevereiro" => 434,
            "janeiro" => 335,
            "julho" => 377,
            "junho" => 396,
            "maio" => 345,
            "março" => 306,
            "novembro" => 433,
            "outubro" => 304,
            "setembro" => 357
          },
          "Rafael" => %{
            "abril" => 348,
            "agosto" => 418,
            "dezembro" => 296,
            "fevereiro" => 293,
            "janeiro" => 351,
            "julho" => 272,
            "junho" => 460,
            "maio" => 463,
            "março" => 434,
            "novembro" => 320,
            "outubro" => 358,
            "setembro" => 375
          },
          "Vinicius" => %{
            "abril" => 371,
            "agosto" => 322,
            "dezembro" => 458,
            "fevereiro" => 408,
            "janeiro" => 403,
            "julho" => 433,
            "junho" => 407,
            "maio" => 357,
            "março" => 375,
            "novembro" => 332,
            "outubro" => 335,
            "setembro" => 386
          }
        },
        "hours_per_year" => %{
          "Cleiton" => %{
            "2016" => 852,
            "2017" => 825,
            "2018" => 924,
            "2019" => 906,
            "2020" => 990
          },
          "Daniele" => %{
            "2016" => 986,
            "2017" => 903,
            "2018" => 880,
            "2019" => 773,
            "2020" => 886
          },
          "Danilo" => %{
            "2016" => 872,
            "2017" => 1048,
            "2018" => 1064,
            "2019" => 987,
            "2020" => 751
          },
          "Diego" => %{"2016" => 930, "2017" => 926, "2018" => 906, "2019" => 791, "2020" => 848},
          "Giuliano" => %{
            "2016" => 895,
            "2017" => 948,
            "2018" => 774,
            "2019" => 1004,
            "2020" => 852
          },
          "Jakeliny" => %{
            "2016" => 1011,
            "2017" => 958,
            "2018" => 880,
            "2019" => 877,
            "2020" => 930
          },
          "Joseph" => %{"2016" => 871, "2017" => 904, "2018" => 743, "2019" => 809, "2020" => 892},
          "Mayk" => %{"2016" => 826, "2017" => 755, "2018" => 1038, "2019" => 1016, "2020" => 769},
          "Rafael" => %{
            "2016" => 873,
            "2017" => 759,
            "2018" => 838,
            "2019" => 905,
            "2020" => 1013
          },
          "Vinicius" => %{
            "2016" => 895,
            "2017" => 865,
            "2018" => 939,
            "2019" => 946,
            "2020" => 942
          }
        }
      }

      assert response == expected_response
    end
  end

  describe "build_from_many/1" do
    test "when list of filenames is provided, builds the report" do
      filenames = ["report_test.csv", "report_test.csv"]

      response = ReportsGenFreelas.build_from_many(filenames)

      expected_response =
        {:ok,
         %{
           "all_hours" => %{
             "Cleiton" => 8994,
             "Daniele" => 8856,
             "Danilo" => 9444,
             "Diego" => 8802,
             "Giuliano" => 8946,
             "Jakeliny" => 9312,
             "Joseph" => 8438,
             "Mayk" => 8808,
             "Rafael" => 8776,
             "Vinicius" => 9174
           },
           "hours_per_month" => %{
             "Cleiton" => %{
               "abril" => 692,
               "agosto" => 782,
               "dezembro" => 678,
               "fevereiro" => 770,
               "janeiro" => 752,
               "julho" => 710,
               "junho" => 784,
               "maio" => 820,
               "março" => 590,
               "novembro" => 748,
               "outubro" => 792,
               "setembro" => 876
             },
             "Daniele" => %{
               "abril" => 802,
               "agosto" => 686,
               "dezembro" => 684,
               "fevereiro" => 662,
               "janeiro" => 796,
               "julho" => 832,
               "junho" => 812,
               "maio" => 738,
               "março" => 854,
               "novembro" => 630,
               "outubro" => 638,
               "setembro" => 722
             },
             "Danilo" => %{
               "abril" => 926,
               "agosto" => 806,
               "dezembro" => 620,
               "fevereiro" => 856,
               "janeiro" => 696,
               "julho" => 798,
               "junho" => 634,
               "maio" => 916,
               "março" => 752,
               "novembro" => 724,
               "outubro" => 936,
               "setembro" => 780
             },
             "Diego" => %{
               "abril" => 796,
               "agosto" => 820,
               "dezembro" => 924,
               "fevereiro" => 644,
               "janeiro" => 706,
               "julho" => 766,
               "junho" => 634,
               "maio" => 710,
               "março" => 768,
               "novembro" => 648,
               "outubro" => 612,
               "setembro" => 774
             },
             "Giuliano" => %{
               "abril" => 862,
               "agosto" => 666,
               "dezembro" => 654,
               "fevereiro" => 760,
               "janeiro" => 756,
               "julho" => 750,
               "junho" => 822,
               "maio" => 834,
               "março" => 580,
               "novembro" => 736,
               "outubro" => 776,
               "setembro" => 750
             },
             "Jakeliny" => %{
               "abril" => 812,
               "agosto" => 666,
               "dezembro" => 770,
               "fevereiro" => 850,
               "janeiro" => 922,
               "julho" => 794,
               "junho" => 732,
               "maio" => 676,
               "março" => 812,
               "novembro" => 642,
               "outubro" => 828,
               "setembro" => 808
             },
             "Joseph" => %{
               "abril" => 602,
               "agosto" => 836,
               "dezembro" => 764,
               "fevereiro" => 654,
               "janeiro" => 678,
               "julho" => 776,
               "junho" => 734,
               "maio" => 702,
               "março" => 618,
               "novembro" => 600,
               "outubro" => 714,
               "setembro" => 760
             },
             "Mayk" => %{
               "abril" => 710,
               "agosto" => 712,
               "dezembro" => 812,
               "fevereiro" => 868,
               "janeiro" => 670,
               "julho" => 754,
               "junho" => 792,
               "maio" => 690,
               "março" => 612,
               "novembro" => 866,
               "outubro" => 608,
               "setembro" => 714
             },
             "Rafael" => %{
               "abril" => 696,
               "agosto" => 836,
               "dezembro" => 592,
               "fevereiro" => 586,
               "janeiro" => 702,
               "julho" => 544,
               "junho" => 920,
               "maio" => 926,
               "março" => 868,
               "novembro" => 640,
               "outubro" => 716,
               "setembro" => 750
             },
             "Vinicius" => %{
               "abril" => 742,
               "agosto" => 644,
               "dezembro" => 916,
               "fevereiro" => 816,
               "janeiro" => 806,
               "julho" => 866,
               "junho" => 814,
               "maio" => 714,
               "março" => 750,
               "novembro" => 664,
               "outubro" => 670,
               "setembro" => 772
             }
           },
           "hours_per_year" => %{
             "Cleiton" => %{
               "2016" => 1704,
               "2017" => 1650,
               "2018" => 1848,
               "2019" => 1812,
               "2020" => 1980
             },
             "Daniele" => %{
               "2016" => 1972,
               "2017" => 1806,
               "2018" => 1760,
               "2019" => 1546,
               "2020" => 1772
             },
             "Danilo" => %{
               "2016" => 1744,
               "2017" => 2096,
               "2018" => 2128,
               "2019" => 1974,
               "2020" => 1502
             },
             "Diego" => %{
               "2016" => 1860,
               "2017" => 1852,
               "2018" => 1812,
               "2019" => 1582,
               "2020" => 1696
             },
             "Giuliano" => %{
               "2016" => 1790,
               "2017" => 1896,
               "2018" => 1548,
               "2019" => 2008,
               "2020" => 1704
             },
             "Jakeliny" => %{
               "2016" => 2022,
               "2017" => 1916,
               "2018" => 1760,
               "2019" => 1754,
               "2020" => 1860
             },
             "Joseph" => %{
               "2016" => 1742,
               "2017" => 1808,
               "2018" => 1486,
               "2019" => 1618,
               "2020" => 1784
             },
             "Mayk" => %{
               "2016" => 1652,
               "2017" => 1510,
               "2018" => 2076,
               "2019" => 2032,
               "2020" => 1538
             },
             "Rafael" => %{
               "2016" => 1746,
               "2017" => 1518,
               "2018" => 1676,
               "2019" => 1810,
               "2020" => 2026
             },
             "Vinicius" => %{
               "2016" => 1790,
               "2017" => 1730,
               "2018" => 1878,
               "2019" => 1892,
               "2020" => 1884
             }
           }
         }}

      assert response == expected_response
    end

    test "when filenames is not list of filenames, returns error" do
      filenames = "report_test.csv"
      response = ReportsGenFreelas.build_from_many(filenames)

      expected_response = {:error, "Please provide list of strings"}

      assert response == expected_response
    end

    test "when filenames is not provided, returns error" do
      response = ReportsGenFreelas.build_from_many()

      expected_response = {:error, "Filenames is not provided"}

      assert response == expected_response
    end
  end
end
