package pl.pdob.paintcalc;

class PaintCalculator {
    static final int SQM_TO_SQCM = 10_000;

    static int calculatePaintAmount(Room room,
                                    PaintDetails paintDetails) {
        int areaToPaint = room.getPaintArea();
        int coverage = paintDetails.getCoverage() * SQM_TO_SQCM; //m^2 na cm^2
        int singleCoatLiters = areaToPaint / coverage;
        int multipleCoatsLiters = singleCoatLiters * paintDetails.getCoats();
        return multipleCoatsLiters;
    }
}
