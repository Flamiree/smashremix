// dkshared.asm

// This file contains shared functions by DK Clones.

scope DKShared {

    // character ID check add for when Donkey Kong Clones are performing cargo hold
    scope cargo_hold_fix_1: {
        OS.patch_start(0xC5564, 0x8014AB24)
        j       cargo_hold_fix_1
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _dkcargo_jump_1       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _dkcargo_jump_1
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _dkcargo_jump_1:
        j       0x8014AB3C
        addiu   at, r0, 0x0010              // original line 2
    }
    
    // character ID check add for when Donkey Kong Clones are performing cargo hold
    scope cargo_hold_fix_2: {
        OS.patch_start(0xC4BCC, 0x8014A18C)
        j       cargo_hold_fix_2
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _dkcargo_jump_2       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _dkcargo_jump_2
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _dkcargo_jump_2:
        j       0x8014A1A4
        addiu   at, r0, 0x0010              // original line 2
    }
	
	// character ID check add for when Donkey Kong Clones are grabbing a barrel or box
    scope item_fix_1: {
        OS.patch_start(0xC0860, 0x80145E20)
        j       item_fix_1
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _item_jump_1       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _item_jump_1
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _item_jump_1:
        j       0x80145E38
        addiu   at, r0, 0x0010              // original line 2
    }
	
	// character ID check add for when Donkey Kong Clones are throwing an item
    scope item_fix_2: {
        OS.patch_start(0xC0E60, 0x80146420)
        j       item_fix_2
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _item_jump_2       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _item_jump_2
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _item_jump_2:
        j       0x80146438
        addiu   at, r0, 0x0010              // original line 2
    }
	
	// character ID check add for when Donkey Kong Clones are throwing a box or barrel
    scope item_fix_3: {
        OS.patch_start(0xC1488, 0x80146A48)
        j       item_fix_3
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _item_jump_3       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _item_jump_3
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _item_jump_3:
        j       0x80146A60
        addiu   at, r0, 0x0010              // original line 2
    }
	
	// character ID check add for when Donkey Kong Clones getting hit while holding a box or barrel
    scope item_fix_4: {
        OS.patch_start(0x65B44, 0x800EA344)
        j       item_fix_4
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _item_jump_4       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _item_jump_4
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _item_jump_4:
        j       0x800EA3CA
        addiu   at, r0, 0x0010              // original line 2
    }
	
	// character ID check add for when Donkey Kong Clones getting hit while holding a box or barrel
    scope item_fix_5: {
        OS.patch_start(0xBC3F4, 0x801419B4)
        j       item_fix_5
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _item_jump_5       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _item_jump_5
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _item_jump_5:
        j       0x801419CC
        addiu   at, r0, 0x0010              // original line 2
    }
	
	// character ID check add for when Donkey Kong Clones getting hit while holding a box or barrel
    scope item_fix_6: {
        OS.patch_start(0xBB804, 0x80140DC4)
        j       item_fix_6
        nop
        _return:
        OS.patch_end()
        
        beq     v0, at, _item_jump_6       // modified original line 1
        addiu   at, r0, Character.id.JDK    // JDK ID
        beq     v0, at, _item_jump_6
        nop
        j       _return                     // return
        addiu   at, r0, 0x0010              // original line 2
        
        _item_jump_6:
        j       0x80140DDC
        addiu   at, r0, 0x0010              // original line 2
    }
    
    }