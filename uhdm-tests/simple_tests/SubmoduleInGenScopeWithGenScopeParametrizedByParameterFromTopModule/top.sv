package prim_pad_wrapper_pkg;
   typedef enum logic {
      BidirStd = 1'h1
   } pad_type_e;
endpackage : prim_pad_wrapper_pkg

package pinmux_pkg;
   import prim_pad_wrapper_pkg::*;
   typedef struct packed {
      pad_type_e dio_pad_type;
   } target_cfg_t;
endpackage : pinmux_pkg

module prim_generic_pad_attr(output logic o);
   import prim_pad_wrapper_pkg::*;
   parameter pad_type_e PadTypeInGeneric = 0;
   if (PadTypeInGeneric == 1)
     begin: gen_inner_if_true
        assign o = 1;
      end
   else
     begin: gen_inner_if_false
        assign o = 0;
     end
endmodule : prim_generic_pad_attr

module prim_pad_attr(output logic o);
   import prim_pad_wrapper_pkg::*;
   parameter pad_type_e PadType = 0;

   if (1) begin : gen_outer_if
       prim_generic_pad_attr #(
          .PadTypeInGeneric(PadType)
       ) u_impl_generic(
          .o(o)
       );
   end
endmodule

module top(output logic o);
   import pinmux_pkg::*;
   parameter target_cfg_t TargetCfg = 1;

   prim_pad_attr #(
      .PadType(TargetCfg.dio_pad_type)
   ) u_prim_pad_attr(
      .o(o)
   );
endmodule
