" vim-mp: Syntax support for Multi Precision in C for Vim
" Copyright (C) 2022  Albin Ahlbäck

" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.

" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.

" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <https://www.gnu.org/licenses/>.
"
" Language:	C
" Maintainer:	Albin Ahlbäck <albin.ahlback@gmail.com>
" Last Change:	2022 March 15

" GMP
if !exists("mp_no_gmp")
    " limbs
    syn keyword cType       mp_limb_t       mp_limb_signed_t
    syn keyword cType       mp_ptr          mp_srcptr

    " size types
    syn keyword cType       mp_bitcnt_t
    syn keyword cType       mp_size_t
    syn keyword cType       mp_exp_t

    " mpz
    syn keyword cType       __mpz_struct
    syn keyword cType       mpz_t
    syn keyword cType       mpz_ptr         mpz_srcptr

    " mpq
    syn keyword cType       __mpq_struct
    syn keyword cType       mpq_t
    syn keyword cType       mpq_ptr         mpq_srcptr

    " mpf
    syn keyword cType       __mpf_struct
    syn keyword cType       mpf_t
    syn keyword cType       mpf_ptr         mpf_srcptr

    " random states
    syn keyword cType       gmp_randalg_t
    syn keyword cType       __gmp_randstate_struct
    syn keyword cType       gmp_randstate_t

    " constants
    syn keyword cConstant   GMP_LIMB_BITS
    syn keyword cConstant   GMP_NAIL_BITS
    syn keyword cConstant   GMP_NUMB_BITS
    syn keyword cConstant   GMP_NUMB_MASK
    syn keyword cConstant   GMP_NUMB_MAX
    syn keyword cConstant   GMP_NAIL_MASK
    syn keyword cConstant   __GNU_MP__                  __GNU_MP_VERSION
    syn keyword cConstant   __GNU_MP_VERSION_PATCHLEVEL __GNU_MP_VERSION_MINOR
    syn keyword cConstant   __GNU_MP_RELEASE

    " macros
    syn keyword cConstant   __GMP_CAST
    syn keyword cConstant   __GMP_ABS
    syn keyword cConstant   __GMP_MAX
    syn keyword cConstant   __GMP_LIKELY        __GMP_UNLIKELY
    syn keyword cConstant   mpq_numref          mpq_denref
    syn keyword cConstant   MPZ_ROINIT_N

    " attributes
    syn keyword cStorageClass   __GMP_ATTRIBUTE_PURE
    syn keyword cStorageClass   __GMP_EXTERN_INLINE
    syn keyword cStorageClass   __GMP_DECLSPEC


    " defined in gmp-impl.h, and so only visible within the GMP repository
    " NOTE: Probably not going to complete it.
    " if exists("mp_want_gmp_impl")
    "     " types
    "     syn keyword cType       gmp_uint_least32_t
    "     syn keyword cType       gmp_intptr_t
    "     syn keyword cType       gmp_pi1_t               gmp_pi2_t

    "     syn keyword cType       gmp_randstate_ptr       gmp_randstate_srcptr
    "     syn keyword cType       gmp_randfnptr_t

    "     syn keyword cType       gmp_primesieve_t

    "     syn keyword cType       UQItype
    "     syn keyword cType       USItype                 SItype
    "     syn keyword cType       UDItype                 DItype
    "     syn keyword cType       UWtype                  UHWtype

    "     syn keyword cType       mp_double_limb_t

    "     syn keyword cType       powers_t

    "     " constants
    "     syn keyword cConstant   MP_LIMB_T_MAX
    "     syn keyword cConstant   ULONG_HIGHBIT
    "     syn keyword cConstant   UINT_HIGHBIT
    "     syn keyword cConstant   USHRT_HIGHBIT
    "     syn keyword cConstant   GMP_LIMB_HIGHBIT
    "     syn keyword cConstant   MP_SIZE_T_MAX           MP_SIZE_T_MIN
    "     syn keyword cConstant   MP_EXP_T_MAX            MP_EXP_T_MIN
    "     syn keyword cConstant   LONG_HIGHBIT
    "     syn keyword cConstant   INT_HIGHBIT
    "     syn keyword cConstant   SHRT_HIGHBIT
    "     syn keyword cConstant   GMP_NUMB_HIGHBIT
    "     syn keyword cConstant   GMP_NAIL_LOWBIT
    "     syn keyword cConstant   DC_DIV_QR_THRESHOLD
    "     syn keyword cConstant   DIVREM_1_NORM_THRESHOLD DIVREM_1_UNNORM_THRESHOLD
    "     syn keyword cConstant   MOD_1_NORM_THRESHOLD    MOD_1_UNNORM_THRESHOLD
    "     syn keyword cConstant   USE_PREINV_DIVREM_1
    "     syn keyword cConstant   DIVREM_2_THRESHOLD
    "     syn keyword cConstant   MUL_FFT_THRESHOLD       SQR_FFT_THRESHOLD
    "     syn keyword cConstant   USE_LEADING_REGPARM
    "     syn keyword cConstant   MPN_TOOM22_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM2_SQR_MINSIZE
    "     syn keyword cConstant   MPN_TOOM33_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM3_SQR_MINSIZE
    "     syn keyword cConstant   MPN_TOOM44_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM4_SQR_MINSIZE
    "     syn keyword cConstant   MPN_TOOM6H_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM6_SQR_MINSIZE
    "     syn keyword cConstant   MPN_TOOM8H_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM8_SQR_MINSIZE
    "     syn keyword cConstant   MPN_TOOM32_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM42_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM43_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM53_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM54_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM63_MUL_MINSIZE
    "     syn keyword cConstant   MPN_TOOM42_MULMID_MINSIZE
    "     syn keyword cConstant   DIVEXACT_BY3_METHOD
    "     syn keyword cConstant   SIEVESIZE
    "     syn keyword cConstant   MUL_TOOM22_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM33_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM44_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM6H_THRESHOLD
    "     syn keyword cConstant   SQR_TOOM6_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM8H_THRESHOLD
    "     syn keyword cConstant   SQR_TOOM8_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM32_TO_TOOM43_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM32_TO_TOOM53_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM42_TO_TOOM53_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM42_TO_TOOM63_THRESHOLD
    "     syn keyword cConstant   MUL_TOOM43_TO_TOOM54_THRESHOLD
    "     syn keyword cConstant   SQR_BASECASE_THRESHOLD
    "     syn keyword cConstant   SQR_TOOM2_THRESHOLD
    "     syn keyword cConstant   SQR_TOOM3_THRESHOLD
    "     syn keyword cConstant   SQR_TOOM4_THRESHOLD
    "     syn keyword cConstant   SQR_TOOM3_THRESHOLD_LIMIT
    "     syn keyword cConstant   MULMID_TOOM42_THRESHOLD
    "     syn keyword cConstant   MULLO_BASECASE_THRESHOLD
    "     syn keyword cConstant   MULLO_DC_THRESHOLD
    "     syn keyword cConstant   MULLO_MUL_N_THRESHOLD
    "     syn keyword cConstant   SQRLO_BASECASE_THRESHOLD
    "     syn keyword cConstant   SQRLO_DC_THRESHOLD
    "     syn keyword cConstant   SQRLO_SQR_THRESHOLD
    "     syn keyword cConstant   DC_DIV_QR_THRESHOLD
    "     syn keyword cConstant   DC_DIVAPPR_Q_THRESHOLD
    "     syn keyword cConstant   DC_BDIV_QR_THRESHOLD
    "     syn keyword cConstant   DC_BDIV_Q_THRESHOLD
    "     syn keyword cConstant   DIVEXACT_JEB_THRESHOLD
    "     syn keyword cConstant   INV_MULMOD_BNM1_THRESHOLD
    "     syn keyword cConstant   INV_APPR_THRESHOLD
    "     syn keyword cConstant   INV_NEWTON_THRESHOLD
    "     syn keyword cConstant   BINV_NEWTON_THRESHOLD
    "     syn keyword cConstant   MU_DIVAPPR_Q_THRESHOLD
    "     syn keyword cConstant   MUPI_DIV_QR_THRESHOLD
    "     syn keyword cConstant   MU_BDIV_Q_THRESHOLD
    "     syn keyword cConstant   MU_BDIV_QR_THRESHOLD
    "     syn keyword cConstant   MULMOD_BNM1_THRESHOLD
    "     syn keyword cConstant   SQRMOD_BNM1_THRESHOLD
    "     syn keyword cConstant   MUL_TO_MULMOD_BNM1_FOR_2NXN_THRESHOLD
    "     syn keyword cConstant   REDC_1_TO_REDC_2_THRESHOLD
    "     syn keyword cConstant   REDC_2_TO_REDC_N_THRESHOLD
    "     syn keyword cConstant   REDC_1_TO_REDC_N_THRESHOLD
    "     syn keyword cConstant   FFT_FIRST_K
    "     syn keyword cConstant   MUL_FFT_MODF_THRESHOLD
    "     syn keyword cConstant   SQR_FFT_MODF_THRESHOLD
    "     syn keyword cConstant   MUL_FFT_THRESHOLD
    "     syn keyword cConstant   SQR_FFT_THRESHOLD
    "     syn keyword cConstant   MUL_FFT_TABLE
    "     syn keyword cConstant   SQR_FFT_TABLE
    "     syn keyword cConstant   MPN_FFT_TABLE_SIZE
    "     syn keyword cConstant   GET_STR_DC_THRESHOLD
    "     syn keyword cConstant   GET_STR_PRECOMPUTE_THRESHOLD
    "     syn keyword cConstant   SET_STR_DC_THRESHOLD
    "     syn keyword cConstant   SET_STR_PRECOMPUTE_THRESHOLD
    "     syn keyword cConstant   FAC_ODD_THRESHOLD
    "     syn keyword cConstant   FAC_DSC_THRESHOLD
    "     syn keyword cConstant   ASSERT_LINE
    "     syn keyword cConstant   ASSERT_FILE

    "     " macros
    "     syn keyword cConstant   CNST_LIMB
    "     syn keyword cConstant   __TMP_ALIGN
    "     syn keyword cConstant   ROUND_UP_MULTIPLE
    "     syn keyword cConstant   TMP_SDECL
    "     syn keyword cConstant   TMP_DECL
    "     syn keyword cConstant   TMP_SMARK
    "     syn keyword cConstant   TMP_MARK
    "     syn keyword cConstant   TMP_SALLOC
    "     syn keyword cConstant   TMP_BALLOC
    "     syn keyword cConstant   TMP_ALLOC
    "     syn keyword cConstant   TMP_SFREE
    "     syn keyword cConstant   TMP_FREE
    "     syn keyword cConstant   TMP_ALLOC_TYPE
    "     syn keyword cConstant   TMP_SALLOC_TYPE
    "     syn keyword cConstant   TMP_BALLOC_TYPE
    "     syn keyword cConstant   TMP_ALLOC_LIMBS
    "     syn keyword cConstant   TMP_SALLOC_LIMBS
    "     syn keyword cConstant   TMP_BALLOC_LIMBS
    "     syn keyword cConstant   TMP_ALLOC_MP_PTRS
    "     syn keyword cConstant   TMP_SALLOC_MP_PTRS
    "     syn keyword cConstant   TMP_BALLOC_MP_PTRS
    "     syn keyword cConstant   TMP_ALLOC_LIMBS_2
    "     syn keyword cConstant   TMP_ALLOC_LIMBS_3
    "     syn keyword cConstant   CRAY_Pragma
    "     syn keyword cConstant   MPN_CMP
    "     syn keyword cConstant   LIKELY
    "     syn keyword cConstant   UNLIKELY
    "     syn keyword cConstant   ABS
    "     syn keyword cConstant   NEG_CAST
    "     syn keyword cConstant   ABS_CAST
    "     syn keyword cConstant   MIN
    "     syn keyword cConstant   MAX
    "     syn keyword cConstant   SIZ
    "     syn keyword cConstant   ABSIZ
    "     syn keyword cConstant   PTR
    "     syn keyword cConstant   EXP
    "     syn keyword cConstant   PREC
    "     syn keyword cConstant   ALLOC
    "     syn keyword cConstant   NUM
    "     syn keyword cConstant   DEN
    "     syn keyword cConstant   POW2_P
    "     syn keyword cConstant   LOG2C
    "     syn keyword cConstant   MP_LIMB_T_SWAP
    "     syn keyword cConstant   MP_SIZE_T_SWAP
    "     syn keyword cConstant   MP_PTR_SWAP
    "     syn keyword cConstant   MP_SRCPTR_SWAP
    "     syn keyword cConstant   MPN_PTR_SWAP
    "     syn keyword cConstant   MPN_SRCPTR_SWAP
    "     syn keyword cConstant   MPZ_PTR_SWAP
    "     syn keyword cConstant   MPZ_SRCPTR_SWAP
    "     syn keyword cConstant   MPQ_PTR_SWAP
    "     syn keyword cConstant   MPQ_SRCPTR_SWAP
    "     syn keyword cConstant   __GMP_ALLOCATE_FUNC_TYPE
    "     syn keyword cConstant   __GMP_REALLOCATE_FUNC_TYPE
    "     syn keyword cConstant   __GMP_FREE_FUNC_TYPE
    "     syn keyword cConstant   __GMP_FREE_FUNC_LIMBS
    "     syn keyword cConstant   __GMP_REALLOCATE_FUNC_MAYBE
    "     syn keyword cConstant   __GMP_REALLOCATE_FUNC_MAYBE_TYPE
    "     syn keyword cConstant   REGPARM_2_1
    "     syn keyword cConstant   REGPARM_3_1
    "     syn keyword cConstant   ASM_L
    "     syn keyword cConstant   RANDS
    "     syn keyword cConstant   RANDS_CLEAR
    "     syn keyword cConstant   ABOVE_THRESHOLD
    "     syn keyword cConstant   BELOW_THRESHOLD
    "     syn keyword cConstant   MPN_COPY_INCR
    "     syn keyword cConstant   MPN_COPY_DECR
    "     syn keyword cConstant   MPN_COPY
    "     syn keyword cConstant   MPN_REVERSE
    "     syn keyword cConstant   MPN_FILL
    "     syn keyword cConstant   MPN_ZERO
    "     syn keyword cConstant   MPN_NORMALIZE
    "     syn keyword cConstant   MPN_NORMALIZE_NOT_ZERO
    "     syn keyword cConstant   MPN_STRIP_LOW_ZEROS_NOT_ZERO
    "     syn keyword cConstant   MPZ_TMP_INIT
    "     syn keyword cConstant   MPZ_REALLOC
    "     syn keyword cConstant   MPZ_NEWALLOC
    "     syn keyword cConstant   MPZ_EQUAL_1_P
    "     syn keyword cConstant   MPN_FIB2_SIZE
    "     syn keyword cConstant   FIB_TABLE
    "     syn keyword cConstant   MPN_OVERLAP_P
    "     syn keyword cConstant   MEM_OVERLAP_P
    "     syn keyword cConstant   MPN_SAME_OR_SEPARATE_P
    "     syn keyword cConstant   MPN_SAME_OR_SEPARATE2_P
    "     syn keyword cConstant   MPN_SAME_OR_INCR2_P
    "     syn keyword cConstant   MPN_SAME_OR_INCR_P
    "     syn keyword cConstant   MPN_SAME_OR_DECR2_P
    "     syn keyword cConstant   MPN_SAME_OR_DECR_P
    "     syn keyword cConstant   ASSERT_FAIL
    "     syn keyword cConstant   ASSERT_ALWAYS
    "     syn keyword cConstant   ASSERT
    "     syn keyword cConstant   ASSERT_CARRY
    "     syn keyword cConstant   ASSERT_NOCARRY

    "     " operators
    "     syn keyword cOperator   numberof

    "     " attributes
    "     syn keyword cStorageClass       ATTRIBUTE_CONST
    "     syn keyword cStorageClass       ATTRIBUTE_NORETURN
    "     syn keyword cStorageClass       ATTRIBUTE_MALLOC
    "     syn keyword cStorageClass       REGPARM_ATTR
    "     syn keyword cStorageClass       FFT_TABLE_ATTRS
    " endif
endif

" MPFR
if !exists("mp_no_mpfr")
    " TODO: Fill this out
endif

" FLINT
if !exists("mp_no_flint")
    " flint.h
    syn keyword cType   ulong
    syn keyword cType   slong
    syn keyword cType   flint_bitcnt_t

    syn keyword cType   flint_mpfr

    syn keyword cType   flint_rand_struct
    syn keyword cType   flint_rand_t
    syn keyword cType   flint_rand_ptr          flint_rand_srcptr

    " ulong_extras.h
    syn keyword cType   n_factor_struct
    syn keyword cType   n_factor_t
    syn keyword cType   n_factor_ptr            n_factor_srcptr
    
    syn keyword cType   n_primes_struct
    syn keyword cType   n_primes_t
    syn keyword cType   n_primes_ptr            n_primes_srcptr
    
    syn keyword cType   n_ecm_struct
    syn keyword cType   n_ecm_t
    syn keyword cType   n_ecm_ptr               n_ecm_srcptr
    
    " fmpz.h
    syn keyword cType   fmpz
    syn keyword cType   fmpz_t
    syn keyword cType   fmpz_ptr                fmpz_srcptr

    syn keyword cType   fmpz_randstate_struct
    syn keyword cType   fmpz_randstate_t

    syn keyword cType   fmpz_preinvn_struct
    syn keyword cType   fmpz_preinvn_t

    syn keyword cType   fmpz_block_header_struct

    syn keyword cType   _fmpz_multi_CRT_instr
    syn keyword cType   fmpz_multi_CRT_struct
    syn keyword cType   fmpz_multi_CRT_t

    syn keyword cType   _fmpz_multi_mod_instr
    syn keyword cType   fmpz_multi_mod_struct
    syn keyword cType   fmpz_multi_mod_t

    syn keyword cType   crt_lut_entry

    syn keyword cType   mod_lut_entry

    syn keyword cType   fmpz_comb_struct
    syn keyword cType   fmpz_comb_t

    syn keyword cType   fmpz_comb_temp_struct
    syn keyword cType   fmpz_comb_temp_t

    " fmpq.h
    syn keyword cType   fmpq
    syn keyword cType   fmpq_t
    syn keyword cType   fmpq_ptr                fmpq_srcptr

    syn keyword cType   _fmpz_mat22_struct
    syn keyword cType   _fmpz_mat22_t

    syn keyword cType   _ui_mat22_struct
    syn keyword cType   _ui_mat22_t

    syn keyword cType   _fmpq_cfrac_list_struct
    syn keyword cType   _fmpq_cfrac_list_t

    syn keyword cType   _fmpq_ball_struct
    syn keyword cType   _fmpq_ball_t

    " profiler.h
    syn keyword cType   meminfo_t
    syn keyword cType   timeit_t

    " exception.h
    syn keyword cType   flint_err_t

    " d_mat.h
    syn keyword cType   d_mat_struct
    syn keyword cType   d_mat_t
    syn keyword cType   d_mat_ptr               d_mat_srcptr

    " arith.h
    syn keyword cType   trig_product_struct
    syn keyword cType   trig_product_t

    " nmod.h
    syn keyword cType   nmod_struct
    syn keyword cType   nmod_t
    syn keyword cType   nmod_ptr                nmod_srcptr

    syn keyword cType   nmod_discrete_log_pohlig_hellman_table_entry_struct
    syn keyword cType   nmod_discrete_log_pohlig_hellman_entry_struct
    syn keyword cType   nmod_discrete_log_pohlig_hellman_t
    syn keyword cType   nmod_discrete_log_pohlig_hellman_ptr
    syn keyword cType   nmod_discrete_log_pohlig_hellman_srcptr

    " fmpz_factor.h
    syn keyword cType   fmpz_factor_struct
    syn keyword cType   fmpz_factor_t
    syn keyword cType   fmpz_factor_ptr         fmpz_factor_srcptr

    syn keyword cType   ecms_struct
    syn keyword cType   ecms_t
    syn keyword cType   ecms_ptr                ecms_srcptr

    " fmpz_mod.h
    syn keyword cType   fmpz_mod_ctx_struct
    syn keyword cType   fmpz_mod_ctx_t
    syn keyword cType   fmpz_mod_ctx_ptr        fmpz_mod_ctx_srcptr

    syn keyword cType   fmpz_mod_discrete_log_pohlig_hellman_table_entry_struct
    syn keyword cType   fmpz_mod_discrete_log_pohlig_hellman_entry_struct
    syn keyword cType   fmpz_mod_discrete_log_pohlig_hellman_struct
    syn keyword cType   fmpz_mod_discrete_log_pohlig_hellman_t
    syn keyword cType   fmpz_mod_discrete_log_pohlig_hellman_ptr
    syn keyword cType   fmpz_mod_discrete_log_pohlig_hellman_srcptr

    " fmpz_poly.h
    syn keyword cType   fmpz_poly_struct
    syn keyword cType   fmpz_poly_t
    syn keyword cType   fmpz_poly_ptr           fmpz_poly_srcptr

    syn keyword cType   fmpz_poly_powers_precom_struct
    syn keyword cType   fmpz_poly_powers_precom_t
    syn keyword cType   fmpz_poly_powers_precom_ptr
    syn keyword cType   fmpz_poly_powers_precom_srcptr

    syn keyword cType   fmpz_poly_factor_struct
    syn keyword cType   fmpz_poly_factor_t
    syn keyword cType   fmpz_poly_factor_ptr    fmpz_poly_factor_srcptr

    syn keyword cType   fmpz_poly_mul_precache_struct
    syn keyword cType   fmpz_poly_mul_precache_t
    syn keyword cType   fmpz_poly_mul_precache_ptr
    syn keyword cType   fmpz_poly_mul_precache_srcptr

    " fmpz_mat.h
    syn keyword cType   fmpz_mat_struct
    syn keyword cType   fmpz_mat_t
    syn keyword cType   fmpz_mat_ptr            fmpz_mat_srcptr

    " fmpq_poly.h
    syn keyword cType   fmpq_poly_struct
    syn keyword cType   fmpq_poly_t
    syn keyword cType   fmpq_poly_ptr           fmpq_poly_srcptr

    syn keyword cType   fmpq_poly_powers_precomp_struct
    syn keyword cType   fmpq_poly_powers_precomp_t
    syn keyword cType   fmpq_poly_powers_precomp_ptr
    syn keyword cType   fmpq_poly_powers_precomp_srcptr


    " constants
    syn keyword cConstant       __FLINT_VERSION
    syn keyword cConstant       __FLINT_VERSION_MINOR
    syn keyword cConstant       __FLINT_VERSION_PATCHLEVEL
    syn keyword cConstant       FLINT_VERSION
    syn keyword cConstant       FLINT_RELEASE

    syn keyword cConstant       UWORD_MAX       UWORD_MIN
    syn keyword cConstant       WORD_MAX        WORD_MIN

    syn keyword cConstant       FLINT_BITS      FLINT_D_BITS
    syn keyword cConstant       FLINT64

    syn keyword cConstant       COEFF_MAX       COEFF_MIN

    " macros
    syn keyword cConstant       PTR_TO_COEFF    COEFF_TO_PTR

    syn keyword cConstant       WORD            UWORD
    syn keyword cConstant       FLINT_TEST_INIT
    syn keyword cConstant       FLINT_TEST_CLEANUP
    syn keyword cConstant       FLINT_MAX
    syn keyword cConstant       FLINT_MIN
    syn keyword cConstant       FLINT_ABS
    syn keyword cConstant       FLINT_SIGN_EXT
    syn keyword cConstant       FLINT_SGN
    syn keyword cConstant       FLINT_FLOG2
    syn keyword cConstant       FLINT_CLOG2
    syn keyword cConstant       FLINT_ARRAY_ALLOC
    syn keyword cConstant       FLINT_ARRAY_REALLOC
    syn keyword cConstant       TMP_INIT
    syn keyword cConstant       TMP_START
    syn keyword cConstant       TMP_ALLOC
    syn keyword cConstant       TMP_ARRAY_ALLOC
    syn keyword cConstant       TMP_END
    syn keyword cConstant       FLINT_NEWTON_INIT
    syn keyword cConstant       FLINT_NEWTON_BASECASE
    syn keyword cConstant       FLINT_NEWTON_END_BASECASE
    syn keyword cConstant       FLINT_NEWTON_LOOP
    syn keyword cConstant       FLINT_NEWTON_END_LOOP
    syn keyword cConstant       FLINT_NEWTON_END

    " attributes
    syn keyword cStorageClass   FLINT_NORETURN
    syn keyword cStorageClass   FLINT_UNUSED
    syn keyword cStorageClass   FLINT_SET_BUT_UNUSED
    syn keyword cStorageClass   FLINT_WARN_UNUSED
    syn match   cStorageClass   "[A-Z_]\+_INLINE\>"
    syn match   cStorageClass   "[A-Z_]\+_DLL\>"

    " operators
    syn keyword cOperator       FLINT_ASSERT
endif

" Arb
if !exists("mp_no_arb")
    syn keyword cType       arf_struct
    syn keyword cType       arf_t
    syn keyword cType       arf_ptr             arf_srcptr

    syn keyword cType       arf_rnd_t 
    syn keyword cType       mantissa_noptr_struct
    syn keyword cType       mantissa_ptr_struct
    syn keyword cType       mantissa_struct

    syn keyword cType       mag_struct
    syn keyword cType       mag_t
    syn keyword cType       mag_ptr             mag_srcptr

    syn keyword cType       arb_struct
    syn keyword cType       arb_t
    syn keyword cType       arb_ptr             arb_srcptr

    syn keyword cType       acb_struct
    syn keyword cType       acb_t
    syn keyword cType       acb_ptr             acb_srcptr

    syn keyword cType       arb_poly_struct
    syn keyword cType       arb_poly_t
    syn keyword cType       arb_poly_ptr        arb_poly_srcptr

    syn keyword cType       acb_poly_struct
    syn keyword cType       acb_poly_t
    syn keyword cType       acb_poly_ptr        acb_poly_srcptr


    " constants
    syn keyword cConstant       __ARB_VERSION
    syn keyword cConstant       __ARB_VERSION_MINOR
    syn keyword cConstant       __ARB_VERSION_PATCHLEVEL
    syn keyword cConstant       ARB_VERSION
    syn keyword cConstant       ARB_RELEASE

    syn keyword cConstant       MAG_BITS
    syn keyword cConstant       MAG_ONE_HALF
    syn keyword cConstant       MAG_MAX_LAGOM_EXP       MAG_MIN_LAGOM_EXP
    syn keyword cConstant       MAG_EXP_POS_INF
    syn keyword cConstant       ADD2_FAST_MAX           ADD2_FAST_MIN
    syn keyword cConstant       LIMB_ONE
    syn keyword cConstant       LIMB_ONES
    syn keyword cConstant       LIMB_TOP
    syn keyword cConstant       MASK_LIMB

    syn keyword cConstant       ARF_RND_DOWN            ARF_RND_UP
    syn keyword cConstant       ARF_RND_FLOOR           ARF_RND_CEIL
    syn keyword cConstant       ARF_RND_NEAR            ARF_PREC_EXACT
    syn keyword cConstant       ARF_RESULT_EXACT        ARF_RESULT_INEXACT
    syn keyword cConstant       ARF_MAX_LAGOM_EXP       ARF_MIN_LAGOM_EXP
    syn keyword cConstant       ARF_EXP_ZERO
    syn keyword cConstant       ARF_EXP_NAN
    syn keyword cConstant       ARF_EXP_POS_INF         ARF_EXP_NEG_INF
    syn keyword cConstant       MUL_MPFR_MIN_LIMBS      MUL_MPFR_MAX_LIMBS
    syn keyword cConstant       ARF_MUL_STACK_ALLOC
    syn keyword cConstant       ARF_MUL_TLS_ALLOC
    syn keyword cConstant       ARF_ADD_STACK_ALLOC
    syn keyword cConstant       ARF_ADD_TLS_ALLOC

    syn keyword cConstant       ARB_RND
    syn keyword cConstant       ARB_STR_MORE
    syn keyword cConstant       ARB_STR_NO_RADIUS
    syn keyword cConstant       ARB_STR_CONDENSE
    syn keyword cConstant       ARB_ATAN_TAB1_BITS
    syn keyword cConstant       ARB_ATAN_TAB1_PREC
    syn keyword cConstant       ARB_ATAN_TAB1_LIMBS
    syn keyword cConstant       ARB_ATAN_TAB21_BITS
    syn keyword cConstant       ARB_ATAN_TAB22_BITS
    syn keyword cConstant       ARB_ATAN_TAB2_PREC
    syn keyword cConstant       ARB_ATAN_TAB2_LIMBS
    syn keyword cConstant       ARB_LOG_TAB11_BITS
    syn keyword cConstant       ARB_LOG_TAB12_BITS
    syn keyword cConstant       ARB_LOG_TAB1_PREC
    syn keyword cConstant       ARB_LOG_TAB1_LIMBS
    syn keyword cConstant       ARB_LOG_TAB21_BITS
    syn keyword cConstant       ARB_LOG_TAB22_BITS
    syn keyword cConstant       ARB_LOG_TAB2_PREC
    syn keyword cConstant       ARB_LOG_TAB2_LIMBS
    syn keyword cConstant       ARB_EXP_TAB1_NUM
    syn keyword cConstant       ARB_EXP_TAB1_BITS
    syn keyword cConstant       ARB_EXP_TAB1_PREC
    syn keyword cConstant       ARB_EXP_TAB1_LIMBS
    syn keyword cConstant       ARB_EXP_TAB21_NUM
    syn keyword cConstant       ARB_EXP_TAB21_BITS
    syn keyword cConstant       ARB_EXP_TAB22_NUM
    syn keyword cConstant       ARB_EXP_TAB22_BITS
    syn keyword cConstant       ARB_EXP_TAB2_PREC
    syn keyword cConstant       ARB_EXP_TAB2_LIMBS
    syn keyword cConstant       ARB_SIN_COS_TAB1_NUM
    syn keyword cConstant       ARB_SIN_COS_TAB1_BITS
    syn keyword cConstant       ARB_SIN_COS_TAB1_PREC
    syn keyword cConstant       ARB_SIN_COS_TAB1_LIMBS
    syn keyword cConstant       ARB_SIN_COS_TAB21_NUM
    syn keyword cConstant       ARB_SIN_COS_TAB21_BITS
    syn keyword cConstant       ARB_SIN_COS_TAB22_NUM
    syn keyword cConstant       ARB_SIN_COS_TAB22_BITS
    syn keyword cConstant       ARB_SIN_COS_TAB2_PREC
    syn keyword cConstant       ARB_SIN_COS_TAB2_LIMBS
    syn keyword cConstant       ARB_PI4_TAB_LIMBS

    syn keyword cConstant       ACB_LAMBERTW_LEFT
    syn keyword cConstant       ACB_LAMBERTW_MIDDLE

    syn keyword cConstant       ARB_HYPGEOM_GAMMA_TAB_NUM
    syn keyword cConstant       ARB_HYPGEOM_GAMMA_TAB_PREC


    " macros
    syn keyword cConstant       MAG_IS_LAGOM
    syn keyword cConstant       MAG_EXPREF
    syn keyword cConstant       MAG_EXP
    syn keyword cConstant       MAG_MAN
    syn keyword cConstant       MAG_FIXMUL
    syn keyword cConstant       MAG_CHECK_BITS
    syn keyword cConstant       MAG_ADJUST_ONE_TOO_LARGE
    syn keyword cConstant       MAG_FAST_ADJUST_ONE_TOO_LARGE
    syn keyword cConstant       MAG_ADJUST_ONE_TOO_SMALL
    syn keyword cConstant       MAG_FAST_ADJUST_ONE_TOO_SMALL
    syn keyword cConstant       MAG_SET_D_2EXP
    syn keyword cConstant       MAG_SET_D_2EXP_LOWER

    syn keyword cConstant       ARF_PREC_ADD
    syn keyword cConstant       ARF_EXP
    syn keyword cConstant       ARF_EXPREF
    syn keyword cConstant       ARF_IS_LAGOM
    syn keyword cConstant       ARF_HAS_PTR
    syn keyword cConstant       ARF_XSIZE
    syn keyword cConstant       ARF_MAKE_XSIZE
    syn keyword cConstant       ARF_SIZE
    syn keyword cConstant       ARF_SGNBIT
    syn keyword cConstant       ARF_NEG
    syn keyword cConstant       ARF_NOPTR_LIMBS
    syn keyword cConstant       ARF_NOPTR_D
    syn keyword cConstant       ARF_PTR_D
    syn keyword cConstant       ARF_PTR_ALLOC
    syn keyword cConstant       ARF_IS_SPECIAL
    syn keyword cConstant       ARF_IS_POW2
    syn keyword cConstant       ARF_MAKE_SPECIAL
    syn keyword cConstant       ARF_DEMOTE
    syn keyword cConstant       ARF_GET_MPN_READONLY
    syn keyword cConstant       ARF_GET_TOP_LIMB
    syn keyword cConstant       ARF_GET_MPN_WRITE
    syn keyword cConstant       UI_ABS_SI
    syn keyword cConstant       ARF_MPN_MUL
    syn keyword cConstant       ARF_MUL_TMP_DECL
    syn keyword cConstant       ARF_MUL_TMP_ALLOC
    syn keyword cConstant       ARF_MUL_TMP_FREE
    syn keyword cConstant       ARF_ADD_TMP_DECL
    syn keyword cConstant       ARF_ADD_TMP_ALLOC
    syn keyword cConstant       ARF_ADD_TMP_FREE

    syn keyword cConstant       ARB_IS_LAGOM
    syn keyword cConstant       ARB_DEF_CACHED_CONSTANT

    syn keyword cConstant       NEWTON_INIT
    syn keyword cConstant       NEWTON_BASECASE
    syn keyword cConstant       NEWTON_END_BASECASE
    syn keyword cConstant       NEWTON_END_LOOP
    syn keyword cConstant       NEWTON_END


    " attributes
    syn match   cStorageClass   "[A-Z_]\+_INLINE\>"
    syn match   cStorageClass   "[A-Z_]\+_DLL\>"
endif

" vim: ts=8
