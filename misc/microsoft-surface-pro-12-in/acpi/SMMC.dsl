Package ()
{
    "DEVICE",
    "\_SB.MMU0",
    Package ()
    {
        "COMPONENT",
        0x0000000000000000,
        Package ()
        {
            "FSTATE",
            0x0000000000000000,
            Package ()
            {
                "CLOCK",
                Package ()
                {
                    "gcc_hlos1_vote_mmu_tcu_clk",
                    0x0000000000000001,
                },
            },
        },
        Package ()
        {
            "FSTATE",
            0x0000000000000001,
            Package ()
            {
                "CLOCK",
                Package ()
                {
                    "gcc_hlos1_vote_mmu_tcu_clk",
                    0x0000000000000002,
                },
            },
        },
    },
},
Package ()
{
    "DEVICE",
    "\_SB.MMU1",
    Package ()
    {
        "COMPONENT",
        0x0000000000000000,
        Package ()
        {
            "FSTATE",
            0x0000000000000000,
            Package ()
            {
                "FOOTSWITCH",
                Package ()
                {
                    "gcc_hlos1_vote_gpu_smmu_gds",
                    0x0000000000000001,
                },
            },
            Package ()
            {
                "CLOCK",
                Package ()
                {
                    "gcc_hlos1_vote_gpu_smmu_clk",
                    0x0000000000000001,
                },
            },
        },
        Package ()
        {
            "FSTATE",
            0x0000000000000001,
            Package ()
            {
                "CLOCK",
                Package ()
                {
                    "gcc_hlos1_vote_gpu_smmu_clk",
                    0x0000000000000002,
                },
            },
            Package ()
            {
                "FOOTSWITCH",
                Package ()
                {
                    "gcc_hlos1_vote_gpu_smmu_gds",
                    0x0000000000000002,
                },
            },
        },
    },
},
