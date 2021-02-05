class SaleSummary
    attr_accessor :file_with_sales
    
    def sales_data
        return extract_file_data.map { |row| SaleRow.new(row[0],row[1],row[2],row[3],row[4],row[5])}
    end
    
    private
    def extract_file_data
        rows = []
        File.foreach(@file_path).with_index do |line, line_num|
            next unless !line_num.zero?
            rows.push(line.split("\t").map {|row_line|row_line})
        end
        return rows
    end
end