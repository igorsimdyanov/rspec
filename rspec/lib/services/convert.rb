module Services
  class Convert
    BYTS_KILOBYTES = 1024
    BYTS_MEGABYTES = 1_048_576
    BYTS_GIGABYTES = 1_073_741_824
    BYTS_TERABYTES = 1_099_511_627_776

    def self.call(number)
      new.call(number)
    end

    def call(number)
      if to_terabytes(number) > 0
        format('%d Tb', to_terabytes(number))
      elsif to_gigabytes(number) > 0
        format('%d Gb', to_gigabytes(number))
      elsif to_megabytes(number) > 0
        format('%d Mb', to_megabytes(number))
      elsif to_kilobytes(number) > 0
        format('%d Kb', to_kilobytes(number))
      else
        number
      end
    end

    def to_kilobytes(number)
      number / BYTS_KILOBYTES
    end

    def to_megabytes(number)
      number / BYTS_MEGABYTES
    end

    def to_gigabytes(number)
      number / BYTS_GIGABYTES
    end

    def to_terabytes(number)
      number / BYTS_TERABYTES
    end
  end
end
