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
" Last Change:	2022 April 10

" GMP
if !exists("mp_no_gmp")
    " limbs
    syn keyword cType   mp_limb_t       mp_limb_signed_t
    syn keyword cType   mp_ptr          mp_srcptr

    " size types
    syn keyword cType   mp_bitcnt_t
    syn keyword cType   mp_size_t
    syn keyword cType   mp_exp_t

    " mpz
    syn keyword cType   __mpz_struct
    syn keyword cType   mpz_t
    syn keyword cType   mpz_ptr         mpz_srcptr

    " mpq
    syn keyword cType   __mpq_struct
    syn keyword cType   mpq_t
    syn keyword cType   mpq_ptr         mpq_srcptr

    " mpf
    syn keyword cType   __mpf_struct
    syn keyword cType   mpf_t
    syn keyword cType   mpf_ptr         mpf_srcptr

    " random states
    syn keyword cType   gmp_randalg_t
    syn keyword cType   __gmp_randstate_struct
    syn keyword cType   gmp_randstate_t

    " constants
    syn keyword cConstant       GMP_LIMB_BITS
    syn keyword cConstant       GMP_NAIL_BITS
    syn keyword cConstant       GMP_NUMB_BITS
    syn keyword cConstant       GMP_NUMB_MASK
    syn keyword cConstant       GMP_NUMB_MAX
    syn keyword cConstant       GMP_NAIL_MASK
    syn keyword cConstant       __GNU_MP__                  __GNU_MP_VERSION
    syn keyword cConstant       __GNU_MP_VERSION_PATCHLEVEL
    syn keyword cConstant       __GNU_MP_VERSION_MINOR
    syn keyword cConstant       __GNU_MP_RELEASE

    " macros
    syn keyword cMacro  __GMP_CAST
    syn keyword cMacro  __GMP_ABS
    syn keyword cMacro  __GMP_MAX
    syn keyword cMacro  __GMP_LIKELY        __GMP_UNLIKELY
    syn keyword cMacro  MPZ_ROINIT_N

    " attributes
    syn keyword cStorageClass   __GMP_ATTRIBUTE_PURE
    syn keyword cStorageClass   __GMP_EXTERN_INLINE
    syn keyword cStorageClass   __GMP_DECLSPEC
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
    syn keyword cMacro  WORD            UWORD
    syn keyword cMacro  FLINT_TEST_INIT
    syn keyword cMacro  FLINT_TEST_CLEANUP
    syn keyword cMacro  FLINT_MAX
    syn keyword cMacro  FLINT_MIN
    syn keyword cMacro  FLINT_ABS
    syn keyword cMacro  FLINT_SIGN_EXT
    syn keyword cMacro  FLINT_SGN
    syn keyword cMacro  FLINT_FLOG2
    syn keyword cMacro  FLINT_CLOG2
    syn keyword cMacro  FLINT_ARRAY_ALLOC
    syn keyword cMacro  FLINT_ARRAY_REALLOC
    syn keyword cMacro  TMP_INIT
    syn keyword cMacro  TMP_START
    syn keyword cMacro  TMP_ALLOC
    syn keyword cMacro  TMP_ARRAY_ALLOC
    syn keyword cMacro  TMP_END
    syn keyword cMacro  FLINT_NEWTON_INIT
    syn keyword cMacro  FLINT_NEWTON_BASECASE
    syn keyword cMacro  FLINT_NEWTON_END_BASECASE
    syn keyword cMacro  FLINT_NEWTON_LOOP
    syn keyword cMacro  FLINT_NEWTON_END_LOOP
    syn keyword cMacro  FLINT_NEWTON_END

    syn keyword cMacro  PTR_TO_COEFF    COEFF_TO_PTR
    syn keyword cMacro  COEFF_IS_MPZ

    " attributes
    syn keyword cStorageClass   FLINT_NORETURN
    syn keyword cStorageClass   FLINT_UNUSED
    syn keyword cStorageClass   FLINT_SET_BUT_UNUSED
    syn keyword cStorageClass   FLINT_WARN_UNUSED
    syn keyword cStorageClass   FLINT_TLS_PREFIX
    syn match   cStorageClass   "[A-Z_]\+_INLINE\>"
    syn match   cStorageClass   "[A-Z_]\+_DLL\>"

    " operators
    syn keyword cOperator       FLINT_ASSERT
endif

" Arb
if !exists("mp_no_arb")
    syn keyword cType   arf_struct
    syn keyword cType   arf_t
    syn keyword cType   arf_ptr             arf_srcptr

    syn keyword cType   arf_rnd_t 
    syn keyword cType   mantissa_noptr_struct
    syn keyword cType   mantissa_ptr_struct
    syn keyword cType   mantissa_struct

    syn keyword cType   mag_struct
    syn keyword cType   mag_t
    syn keyword cType   mag_ptr             mag_srcptr

    syn keyword cType   arb_struct
    syn keyword cType   arb_t
    syn keyword cType   arb_ptr             arb_srcptr

    syn keyword cType   acb_struct
    syn keyword cType   acb_t
    syn keyword cType   acb_ptr             acb_srcptr

    syn keyword cType   arb_poly_struct
    syn keyword cType   arb_poly_t
    syn keyword cType   arb_poly_ptr        arb_poly_srcptr

    syn keyword cType   acb_poly_struct
    syn keyword cType   acb_poly_t
    syn keyword cType   acb_poly_ptr        acb_poly_srcptr


    " constants
    syn keyword cConstant       __ARB_VERSION
    syn keyword cConstant       __ARB_VERSION_MINOR
    syn keyword cConstant       __ARB_VERSION_PATCHLEVEL
    syn keyword cConstant       ARB_VERSION
    syn keyword cConstant       __ARB_RELEASE

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
    syn keyword cMacro  MAG_IS_LAGOM
    syn keyword cMacro  MAG_EXPREF
    syn keyword cMacro  MAG_EXP
    syn keyword cMacro  MAG_MAN
    syn keyword cMacro  MAG_FIXMUL
    syn keyword cMacro  MAG_CHECK_BITS
    syn keyword cMacro  MAG_ADJUST_ONE_TOO_LARGE
    syn keyword cMacro  MAG_FAST_ADJUST_ONE_TOO_LARGE
    syn keyword cMacro  MAG_ADJUST_ONE_TOO_SMALL
    syn keyword cMacro  MAG_FAST_ADJUST_ONE_TOO_SMALL
    syn keyword cMacro  MAG_SET_D_2EXP
    syn keyword cMacro  MAG_SET_D_2EXP_LOWER

    syn keyword cMacro  ARF_PREC_ADD
    syn keyword cMacro  ARF_EXP
    syn keyword cMacro  ARF_EXPREF
    syn keyword cMacro  ARF_IS_LAGOM
    syn keyword cMacro  ARF_HAS_PTR
    syn keyword cMacro  ARF_XSIZE
    syn keyword cMacro  ARF_MAKE_XSIZE
    syn keyword cMacro  ARF_SIZE
    syn keyword cMacro  ARF_SGNBIT
    syn keyword cMacro  ARF_NEG
    syn keyword cMacro  ARF_NOPTR_LIMBS
    syn keyword cMacro  ARF_NOPTR_D
    syn keyword cMacro  ARF_PTR_D
    syn keyword cMacro  ARF_PTR_ALLOC
    syn keyword cMacro  ARF_IS_SPECIAL
    syn keyword cMacro  ARF_IS_POW2
    syn keyword cMacro  ARF_MAKE_SPECIAL
    syn keyword cMacro  ARF_DEMOTE
    syn keyword cMacro  ARF_GET_MPN_READONLY
    syn keyword cMacro  ARF_GET_TOP_LIMB
    syn keyword cMacro  ARF_GET_MPN_WRITE
    syn keyword cMacro  ARF_MPN_MUL
    syn keyword cMacro  ARF_MUL_TMP_DECL
    syn keyword cMacro  ARF_MUL_TMP_ALLOC
    syn keyword cMacro  ARF_MUL_TMP_FREE
    syn keyword cMacro  ARF_ADD_TMP_DECL
    syn keyword cMacro  ARF_ADD_TMP_ALLOC
    syn keyword cMacro  ARF_ADD_TMP_FREE

    syn keyword cMacro  ARB_IS_LAGOM
    syn keyword cMacro  ARB_DEF_CACHED_CONSTANT

    syn keyword cMacro  UI_ABS_SI
    syn keyword cMacro  nn_mul_2x1              nn_mul_2x2

    syn keyword cMacro  NEWTON_INIT
    syn keyword cMacro  NEWTON_BASECASE
    syn keyword cMacro  NEWTON_END_BASECASE
    syn keyword cMacro  NEWTON_END_LOOP
    syn keyword cMacro  NEWTON_END


    " attributes
    syn keyword cStorageClass   TLS_PREFIX
endif

" For some reason, Vim does not set this by default.
hi def link cMacro      Macro

" vim: ts=8
