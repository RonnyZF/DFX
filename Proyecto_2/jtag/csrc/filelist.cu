PIC_LD=ld
LDVERSION= $(shell $(PIC_LD) -v | grep -q 2.30 ;echo $$?)
ifeq ($(LDVERSION), 0)
     LD_NORELAX_FLAG= --no-relax
endif

ARCHIVE_OBJS=
ARCHIVE_OBJS += _1913281_archive_1.so
_1913281_archive_1.so : archive.12/_1913281_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic $(LD_NORELAX_FLAG)  -o .//../simv.daidir//_1913281_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_1913281_archive_1.so $@


ARCHIVE_OBJS += _prev_archive_1.so
_prev_archive_1.so : archive.12/_prev_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic $(LD_NORELAX_FLAG)  -o .//../simv.daidir//_prev_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_prev_archive_1.so $@



VCS_CU_ARC0 =_cuarc0.so

VCS_CU_ARC_OBJS0 =objs/amcQw_d.o 


O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<


%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<

$(VCS_CU_ARC0) : $(VCS_CU_ARC_OBJS0)
	$(PIC_LD) -shared  -Bsymbolic $(LD_NORELAX_FLAG)  -o .//../simv.daidir//$(VCS_CU_ARC0) $(VCS_CU_ARC_OBJS0)
	rm -f $(VCS_CU_ARC0)
	@ln -sf .//../simv.daidir//$(VCS_CU_ARC0) $(VCS_CU_ARC0)

CU_UDP_OBJS = \
objs/udps/v8AJk.o objs/udps/cj9bq.o objs/udps/HYGGy.o objs/udps/EDEpg.o objs/udps/ss31W.o  \
objs/udps/qt52A.o objs/udps/Wqp2a.o objs/udps/P6UFt.o objs/udps/LwG9I.o objs/udps/Nd959.o  \
objs/udps/xRRpE.o objs/udps/SSbDw.o objs/udps/LHkL6.o objs/udps/IbaV7.o objs/udps/h8RDU.o  \
objs/udps/NqL6B.o objs/udps/S2mVL.o objs/udps/MFUH5.o objs/udps/p6jI0.o objs/udps/guAtk.o  \
objs/udps/eFeH3.o 

CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \


CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(VCS_CU_ARC0) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

