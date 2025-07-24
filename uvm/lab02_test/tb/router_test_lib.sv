class base_test extends uvm_test;

    router_tb tb;

    `uvm_component_utils(base_test)
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info( "MSG", "Test build phase executed", UVM_HIGH)
    endfunction : build_phase

    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();
    endfunction : end_of_elaboration_phase


endclass : base_test