-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- Generated by Quartus II Version 13.1.0 Build 162 10/23/2013 SJ Full Version
-- Created on Fri Dec 09 12:55:31 2022

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SAC IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        z : OUT STD_LOGIC_VECTOR(0 TO 2)
    );
END SAC;

ARCHITECTURE BEHAVIOR OF SAC IS
    TYPE type_fstate IS (St_4,St_2,St_6,St_3,St_1,St_5,St_7,S_3,S_2,S_1,S_0,S_5,S_4,S_7,S_6);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    SIGNAL reg_z : STD_LOGIC_VECTOR(0 TO 2) := "000";
BEGIN
    PROCESS (clock,reset,reg_fstate)
    BEGIN
        IF (reset='1') THEN
            fstate <= St_4;
        ELSIF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,x,reg_z)
    BEGIN
        reg_z <= "000";
        z <= "000";
        CASE fstate IS
            WHEN St_4 =>
                IF ((x = '0')) THEN
                    reg_fstate <= St_2;
                ELSIF ((x = '1')) THEN
                    reg_fstate <= St_6;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= St_4;
                END IF;
            WHEN St_2 =>
                IF ((x = '0')) THEN
                    reg_fstate <= St_1;
                ELSIF ((x = '1')) THEN
                    reg_fstate <= St_3;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= St_2;
                END IF;
            WHEN St_6 =>
                IF ((x = '0')) THEN
                    reg_fstate <= St_5;
                ELSIF ((x = '1')) THEN
                    reg_fstate <= St_7;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= St_6;
                END IF;
            WHEN St_3 =>
                IF ((x = '1')) THEN
                    reg_fstate <= S_3;
                ELSIF ((x = '0')) THEN
                    reg_fstate <= S_2;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= St_3;
                END IF;
            WHEN St_1 =>
                IF ((x = '1')) THEN
                    reg_fstate <= S_1;
                ELSIF ((x = '0')) THEN
                    reg_fstate <= S_0;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= St_1;
                END IF;
            WHEN St_5 =>
                IF ((x = '1')) THEN
                    reg_fstate <= S_5;
                ELSIF ((x = '0')) THEN
                    reg_fstate <= S_4;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= St_5;
                END IF;
            WHEN St_7 =>
                IF ((x = '1')) THEN
                    reg_fstate <= S_7;
                ELSIF ((x = '0')) THEN
                    reg_fstate <= S_6;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= St_7;
                END IF;
            WHEN S_3 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_3;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_3;
                END IF;

                reg_z <= "011";
            WHEN S_2 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_2;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_2;
                END IF;

                reg_z <= "010";
            WHEN S_1 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_1;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_1;
                END IF;

                reg_z <= "001";
            WHEN S_0 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_0;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_0;
                END IF;

                reg_z <= "000";
            WHEN S_5 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_5;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_5;
                END IF;

                reg_z <= "101";
            WHEN S_4 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_4;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_4;
                END IF;

                reg_z <= "100";
            WHEN S_7 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_7;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_7;
                END IF;

                reg_z <= "111";
            WHEN S_6 =>
                IF ((x = x)) THEN
                    reg_fstate <= S_6;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= S_6;
                END IF;

                reg_z <= "110";
            WHEN OTHERS => 
                reg_z <= "XXX";
                report "Reach undefined state";
        END CASE;
        z <= reg_z;
    END PROCESS;
END BEHAVIOR;
