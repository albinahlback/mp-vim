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
    syn keyword cType   mpfr_void
    syn keyword cType   mpfr_int        mpfr_uint
    syn keyword cType   mpfr_long       mpfr_ulong
    syn keyword cType   mpfr_size_t

    syn keyword cType   mpfr_flags_t
    syn keyword cType   mpfr_rnd_t

    syn keyword cType   mpfr_prec_t     mpfr_uprec_t
    syn keyword cType   mpfr_sign_t
    syn keyword cType   mpfr_exp_t      mpfr_uexp_t

    " main structure
    syn keyword cType   __mpfr_struct
    syn keyword cType   mpfr_t
    syn keyword cType   mpfr_ptr        mpfr_srcptr

    syn keyword cType   mpfr_kind_t     mpfr_free_cache_t

    " attributes
    syn keyword cStorageClass   __MPFR_DECLSPEC
endif

" FLINT
if !exists("mp_no_flint")
    " flint.h
    syn keyword cType   ulong                   slong
    syn keyword cType   flint_bitcnt_t

    syn keyword cType   flint_rand_s
    syn keyword cType   flint_rand_t
    syn keyword cType   flint_rand_ptr          flint_rand_srcptr

    syn keyword cType   __FLINT_FILE            FLINT_FILE

    " operators
    syn keyword cOperator       FLINT_ASSERT

    " constants
    syn keyword cConstant       __FLINT_VERSION
    syn keyword cConstant       __FLINT_VERSION_MINOR
    syn keyword cConstant       __FLINT_VERSION_PATCHLEVEL
    syn keyword cConstant       FLINT_VERSION
    syn keyword cConstant       __FLINT_RELEASE         __FLINT_RELEASE_NUM

    syn keyword cConstant       UWORD_MAX               UWORD_MIN
    syn keyword cConstant       WORD_MAX                WORD_MIN

    syn keyword cConstant       FLINT_BITS              FLINT_D_BITS
    syn keyword cConstant       FLINT64

    " macros
    syn keyword cMacro  FLINT_CONSTANT_P
    syn keyword cMacro  WORD_FMT                WORD_WIDTH_FMT
    syn keyword cMacro  WORD                    UWORD
    syn keyword cMacro  FLINT_GC_INIT
    syn keyword cMacro  FLINT_TEST_INIT         FLINT_TEST_CLEANUP
    syn keyword cMacro  FLINT_MAX               FLINT_MIN
    syn keyword cMacro  FLINT_ABS
    syn keyword cMacro  FLINT_SIGN_EXT          FLINT_SGN
    syn keyword cMacro  FLINT_FLOG2             FLINT_CLOG2
    syn keyword cMacro  FLINT_ARRAY_ALLOC       FLINT_ARRAY_REALLOC
    syn keyword cMacro  TMP_INIT                TMP_START
    syn keyword cMacro  TMP_ALLOC               TMP_ARRAY_ALLOC
    syn keyword cMacro  TMP_END

    " attributes
    syn match   cStorageClass   "[A-Z_]\+_DLL\>"
    syn match   cStorageClass   "[A-Z_]\+_INLINE\>"

    syn keyword cStorageClass   FLINT_FORCE_INLINE
    syn keyword cStorageClass   FLINT_STATIC_NOINLINE
    syn keyword cStorageClass   FLINT_UNUSED
    syn keyword cStorageClass   FLINT_SET_BUT_UNUSED
    syn keyword cStorageClass   FLINT_NORETURN
    syn keyword cStorageClass   FLINT_CONST
    syn keyword cStorageClass   FLINT_WARN_UNUSED
    syn keyword cStorageClass   FLINT_UNLIKELY
    syn keyword cStorageClass   FLINT_LIKELY
    syn keyword cStorageClass   FLINT_PUSH_OPTIONS
    syn keyword cStorageClass   FLINT_POP_OPTIONS
    syn keyword cStorageClass   FLINT_OPTIMIZE_NESTED_3
    syn keyword cStorageClass   FLINT_OPTIMIZE_NESTED_2
    syn keyword cStorageClass   FLINT_OPTIMIZE_NESTED_1
    syn keyword cStorageClass   FLINT_OPTIMIZE

    syn keyword cStorageClass   FLINT_TLS_PREFIX

    " limb_types.h
    syn keyword cType   n_factor_struct
    syn keyword cType   n_factor_t
    syn keyword cType   n_factor_ptr                    n_factor_srcptr
    
    syn keyword cType   n_primes_struct
    syn keyword cType   n_primes_t
    syn keyword cType   n_primes_ptr                    n_primes_srcptr
    
    " mpoly_types.h
    syn keyword cType   ordering_t
    syn keyword cConstant       MPOLY_NUM_ORDERINGS
    syn keyword cType   mpoly_ctx_struct                mpoly_ctx_t
    syn keyword cType   nmod_mpoly_ctx_struct           nmod_mpoly_ctx_t
    syn keyword cType   fmpz_mpoly_ctx_struct           fmpz_mpoly_ctx_t
    syn keyword cType   fmpq_mpoly_ctx_struct           fmpq_mpoly_ctx_t
    syn keyword cType   fmpz_mod_mpoly_ctx_struct       fmpz_mod_mpoly_ctx_t
    
    " nmod_types.h
    syn keyword cType   nmod_t
    syn keyword cType   nmod_mat_struct                 nmod_mat_t
    syn keyword cType   nmod_poly_struct                nmod_poly_t
    syn keyword cType   nmod_poly_factor_struct         nmod_poly_factor_t
    syn keyword cType   nmod_poly_mat_struct            nmod_poly_mat_t
    syn keyword cType   nmod_mpoly_struct               nmod_mpoly_t
    syn keyword cType   nmod_mpoly_factor_struct        nmod_mpoly_factor_t
    
    " fmpz_types.h
    syn keyword cType   fmpz                            fmpz_t
    syn keyword cConstant       SMALL_FMPZ_BITCOUNT_MAX
    syn keyword cConstant       COEFF_MIN               COEFF_MAX
    syn keyword cMacro  PTR_TO_COEFF                    COEFF_TO_PTR
    syn keyword cMacro  COEFF_IS_MPZ
    syn keyword cType   fmpz_factor_struct              fmpz_factor_t
    syn keyword cType   fmpz_preinvn_struct             fmpz_preinvn_t
    syn keyword cType   fmpz_poly_struct                fmpz_poly_t
    syn keyword cType   fmpz_poly_factor_struct         fmpz_poly_factor_t
    syn keyword cType   fmpz_mat_struct                 fmpz_mat_t
    syn keyword cType   fmpz_poly_mat_struct            fmpz_poly_mat_t
    syn keyword cType   fmpz_mpoly_struct               fmpz_mpoly_t
    syn keyword cType   fmpz_mpoly_factor_struct        fmpz_mpoly_factor_t
    syn keyword cType   fmpz_poly_q_struct              fmpz_poly_q_t
    syn keyword cType   fmpz_mpoly_q_struct             fmpz_mpoly_q_t
    syn keyword cType   fmpzi_struct                    fmpzi_t

    " fmpz_mod_types.h
    syn keyword cType   fmpz_mod_ctx_struct             fmpz_mod_ctx_t
    syn keyword cType   fmpz_mod_mat_struct             fmpz_mod_mat_t
    syn keyword cType   fmpz_mod_poly_struct            fmpz_mod_poly_t
    syn keyword cType   fmpz_mod_poly_factor_struct     fmpz_mod_poly_factor_t
    syn keyword cType   fmpz_mod_mpoly_struct           fmpz_mod_mpoly_t
    syn keyword cType   fmpz_mod_mpoly_factor_struct    fmpz_mod_mpoly_factor_t

    " fmpq_types.h
    syn keyword cType   fmpq                            fmpq_t
    syn keyword cType   fmpq_mat_struct                 fmpq_mat_t
    syn keyword cType   fmpq_poly_struct                fmpq_poly_t
    syn keyword cType   fmpq_mpoly_struct               fmpq_mpoly_t
    syn keyword cType   fmpq_mpoly_factor_struct        fmpq_mpoly_factor_t

    " fq_types.h
    syn keyword cType   fq_struct                       fq_t
    syn keyword cType   fq_ctx_struct                   fq_ctx_t
    syn keyword cType   fq_mat_struct                   fq_mat_t
    syn keyword cType   fq_poly_struct                  fq_poly_t
    syn keyword cType   fq_poly_factor_struct           fq_poly_factor_t

    " fq_nmod_types.h
    syn keyword cType   fq_nmod_struct                  fq_nmod_t
    syn keyword cType   fq_nmod_ctx_struct              fq_nmod_ctx_t
    syn keyword cType   fq_nmod_mat_struct              fq_nmod_mat_t
    syn keyword cType   fq_nmod_poly_struct             fq_nmod_poly_t
    syn keyword cType   fq_nmod_poly_factor_struct      fq_nmod_poly_factor_t

    " fq_zech_types.h
    syn keyword cType   fq_zech_struct                  fq_zech_t
    syn keyword cType   fq_zech_ctx_struct              fq_zech_ctx_t
    syn keyword cType   fq_zech_mat_struct              fq_zech_mat_t
    syn keyword cType   fq_zech_poly_struct             fq_zech_poly_t
    syn keyword cType   fq_zech_poly_factor_struct      fq_zech_poly_factor_t

    " fq_default_types.h
    syn keyword cConstant       FQ_DEFAULT_FQ_ZECH      FQ_DEFAULT_FQ_NMOD
    syn keyword cConstant       FQ_DEFAULT_FQ           FQ_DEFAULT_NMOD
    syn keyword cConstant       FQ_DEFAULT_FMPZ_MOD
    syn keyword cType   fq_default_struct               fq_default_t
    syn keyword cType   fq_default_ctx_struct           fq_default_ctx_t
    syn keyword cType   fq_default_mat_struct           fq_default_mat_t
    syn keyword cType   fq_default_poly_struct          fq_default_poly_t

    " arf_types.h
    syn keyword cConstant       ARF_NOPTR_LIMBS
    syn keyword cType   mantissa_noptr_struct           mantissa_ptr_struct
    syn keyword cType   mantissa_struct
    syn keyword cType   arf_struct                      arf_t
    syn keyword cType   arf_ptr                         arf_srcptr
    syn keyword cType   arf_interval_struct             arf_interval_t
    syn keyword cType   arf_interval_ptr                arf_interval_srcptr

    " acf_types.h
    syn keyword cType   acf_struct                      acf_t
    syn keyword cType   acf_ptr                         acf_srcptr

    " arb_types.h
    syn keyword cType   mag_struct                      mag_t
    syn keyword cType   mag_ptr                         mag_srcptr
    syn keyword cType   arb_struct                      arb_t
    syn keyword cType   arb_ptr                         arb_srcptr
    syn keyword cType   arb_mat_struct                  arb_mat_t
    syn keyword cType   arb_poly_struct                 arb_poly_t

    " acb_types.h
    syn keyword cType   acb_struct                      acb_t
    syn keyword cType   acb_ptr                         acb_srcptr
    syn keyword cType   acb_mat_struct                  acb_mat_t
    syn keyword cType   acb_poly_struct                 acb_poly_t
endif

" For some reason, Vim does not set this by default.
hi def link cMacro      Macro

" vim: ts=8
