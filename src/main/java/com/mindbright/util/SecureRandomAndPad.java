/******************************************************************************
 *
 * Copyright (c) 1999-2005 AppGate Network Security AB. All Rights Reserved.
 * 
 * This file contains Original Code and/or Modifications of Original Code as
 * defined in and that are subject to the MindTerm Public Source License,
 * Version 2.0, (the 'License'). You may not use this file except in compliance
 * with the License.
 * 
 * You should have received a copy of the MindTerm Public Source License
 * along with this software; see the file LICENSE.  If not, write to
 * AppGate Network Security AB, Otterhallegatan 2, SE-41118 Goteborg, SWEDEN
 *
 *****************************************************************************/

package com.mindbright.util;

import com.mindbright.jca.security.SecureRandom;

/**
 * Class for generating both random bytes and pad bytes. The pad bytes
 * are also pseudo-random but generated by a different algorithm
 * (arcfour) and uses a different seed.
 */
public class SecureRandomAndPad extends SecureRandom {

    private SecureRandom random;
    private byte[]       state;
    private int          x;
    private int          y;

    /**
     * Calculate the next byte in the arcfour cipher stream
     *
     * @return a random byte (encoded in an int)
     */
    private int arcfour_byte() {
        int x, y, sx, sy;
        x = (this.x + 1) & 0xff;
        sx = (int)state[x];
        y = (sx + this.y) & 0xff;
        sy = (int)state[y];
        this.x = x;
        this.y = y;
        state[y] = (byte)(sx & 0xff);
        state[x] = (byte)(sy & 0xff);
        return (int)state[((sx + sy) & 0xff)];
    }

    /**
     * Simple constructor.
     */
    public SecureRandomAndPad() {
        this(new SecureRandom());
    }

    /**
     * Creates an instance which uses the given random number
     * generator.
     *
     * @param random underlying random number generator
     */
    public SecureRandomAndPad(SecureRandom random) {
        this.random = random;
        this.state  = new byte[256];
        for(int i = 0; i < 256; i++) {
            this.state[i] = (byte)i;
        }
    }

    /**
     * Seed the pad generator. This should be called once before
     * extracting pad bytes. Otherwise the pad bytes will be
     * nonrandom.
     *
     * @param seed array of random data which is used to seed the generator
     */
    public void setPadSeed(byte[] seed) {
        int seedindex  = 0;
        int stateindex = 0;
        int t, u;
        for(int counter = 0; counter < 256; counter++) {
            t = (int)state[counter];
            stateindex = (stateindex + seed[seedindex] + t) & 0xff;
            u = (int)state[stateindex];
            state[stateindex] = (byte)(t & 0xff);
            state[counter] = (byte)(u & 0xff);
            if(++seedindex >= seed.length)
                seedindex = 0;
        }
    }

    /**
     * Get a number of pad bytes.
     *
     * @param bytes array into which the bytes should be stored
     * @param off offset to first byte to store in array
     * @param len number of pad bytes to store
     */
    public void nextPadBytes(byte[] bytes, int off, int len) {
        int end = off + len;
        for(int i = off; i < end; i++) {
            bytes[i] = (byte)(((int)bytes[i] ^ arcfour_byte()) & 0xff);
        }
    }

    /**
     * Generate random seed bytes. These bytes are generated by the
     * normal random number generator.
     *
     * @param numBytes how many bytes to generate
     *
     * @return an array of random bytes
     */
    public byte[] generateSeed(int numBytes) {
        return random.generateSeed(numBytes);
    }

    /**
     * Fills the given array with random bytes.
     *
     * @param bytes array to fill with random bytes
     */
    public void nextBytes(byte[] bytes) {
        random.nextBytes(bytes);
    }

    /**
     * Seeds the random number generator.
     *
     * @param seed array of random data which is used to seed the generator
     */
    public void setSeed(byte[] seed) {
        random.setSeed(seed);
    }
}
