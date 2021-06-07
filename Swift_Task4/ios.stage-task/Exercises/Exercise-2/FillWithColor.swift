import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]],
                       _ row: Int,
                       _ column: Int,
                       _ newColor: Int) -> [[Int]] {
        
        if image == [[]] ||
            row < 0 ||
            column < 0 ||
            row >= image.count ||
            column >= image[0].count
        { return image }
        
        var newImage = image
        let startElement = image[row][column]
        var headElement = [(row, column)]
        
        repeat {
            let (row, column) = headElement[0]
            headElement.remove(at: 0)
            for (r,c) in [(row, column - 1), (row, column + 1), (row - 1, column), (row + 1, column)] {
                if (r >= 0 &&
                        c >= 0 &&
                        r < image.count &&
                        c < image[0].count) &&
                    newImage[r][c] == startElement
                { headElement.append((r, c)) }
            }
            newImage[row][column] = newColor
        } while headElement.count > 0
        
        
        
        return newImage
    }
}
