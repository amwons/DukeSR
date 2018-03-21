#!/usr/bin/env bash
# EDSR baseline model (x2)
#python main.py --model EDSR --scale 2 --save EDSR_baseline_x2 --reset --print_every 1
#python main.py --model EDSR --scale 2 --pre_train ../experiment/model/EDSR_baseline_x2.pt --reset --test_only --ext img --n_val 100 --save_results

# EDSR baseline model (x3) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 3 --save EDSR_baseline_x3 --reset --pre_train ../experiment/model/EDSR_baseline_x2.pt

# EDSR baseline model (x4) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 4 --save EDSR_baseline_x4 --reset --pre_train ../experiment/model/EDSR_baseline_x2.pt
#python main.py --model EDSR --scale 4 --pre_train ../experiment/model/EDSR_baseline_x4.pt --reset --test_only --ext img --n_val 100 --save_results

# EDSR in the paper (x2)
#python main.py --model EDSR --scale 2 --save EDSR_x2 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset

# EDSR in the paper (x3) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 3 --save EDSR_x3 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset --pre_train ../experiment/EDSR_x2/model/model_best.pt

# EDSR in the paper (x4) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 4 --save EDSR_x4 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset --pre_train ../experiment/EDSR_x2/model/model_best.pt

# MDSR baseline model
#python main.py --template MDSR --model MDSR --scale 2+3+4 --save MDSR_baseline --reset

# MDSR in the paper
#python main.py --template MDSR --model MDSR --scale 2+3+4 --save MDSR --n_resblocks 80 --reset

# Test your own images
#python main.py --scale 4 --data_test MyImage --test_only --save_results --pre_train ../experiment/model/EDSR_baseline_x4.pt --chop_forward

#Advanced - JPEG artifact removal
#python main.py --template MDSR_jpeg --model MDSR --scale 2+3+4 --save MDSR_jpeg --quality 75+ --reset

#python main.py --model EDSR --scale 1 --data_test MyImage --test_only --save_results --n_resblocks 32 --ext img --n_feats 256 --res_scale 0.1 --pre_train ../experiment/EDSRNOISE2/model/model_lastest.pt --chop_forward


#python main.py --model DNEDSR --scale 4 --n_GPU 2 --data_test MyImage --test_only --save_results --n_resblocks 32 --ext img --n_feats 256 --res_scale 0.1 --pre_train ../experiment/DNEDSR3/model/model_lastest.pt --chop_forward
python main.py --model DNEDSR --scale 4 --n_GPU 2 --data_test MyImage --test_only --save_results --n_resblocks 32 --ext img --n_feats 256 --res_scale 0.1 --pre_train ../experiment/DNEDSRFINAL2/model/model_lastest.pt
