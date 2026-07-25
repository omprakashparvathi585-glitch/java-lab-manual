class Solution {
public:
    bool checkStraightLine(vector<vector<int>>& coordinates) {
        int x0 = coordinates[0][0], y0 = coordinates[0][1];
        int x1 = coordinates[1][0], y1 = coordinates[1][1];
        int dx = x1 - x0, dy = y1 - y0;
        
        for (int i = 2; i < coordinates.size(); i++) {
            int dxi = coordinates[i][0] - x0;
            int dyi = coordinates[i][1] - y0;
            
            // cross product check: dx*dyi - dy*dxi == 0 means collinear
            if (dx * dyi - dy * dxi != 0) {
                return false;
            }
        }
        
        return true;
    }
};
