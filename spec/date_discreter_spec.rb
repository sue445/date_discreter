describe DateDiscreter do
  let(:continuous_months) do
    [
      to_time("2013-10-01 00:00:00"),
      to_time("2013-11-01 00:00:00"),
      to_time("2013-12-01 00:00:00"),
      to_time("2014-01-01 00:00:00"),
      to_time("2014-02-01 00:00:00"),
    ]
  end

  let(:discrete_months) do
    [
      to_time("2013-10-01 00:00:00"),
      to_time("2013-12-01 00:00:00"),
      to_time("2014-01-01 00:00:00"),
      to_time("2014-02-01 00:00:00"),
    ]
  end

  let(:continuous_days) do
    [
      to_time("2013-10-01 00:00:00"),
      to_time("2013-10-02 00:00:00"),
      to_time("2013-10-03 00:00:00"),
      to_time("2013-10-04 00:00:00"),
      to_time("2013-10-05 00:00:00"),
    ]
  end

  let(:discrete_days) do
    [
      to_time("2013-10-01 00:00:00"),
      to_time("2013-10-02 00:00:00"),
      to_time("2013-10-04 00:00:00"),
      to_time("2013-10-05 00:00:00"),
    ]
  end

  let(:continuous_hours) do
    [
      to_time("2013-10-01 00:00:00"),
      to_time("2013-10-01 01:00:00"),
      to_time("2013-10-01 02:00:00"),
      to_time("2013-10-01 03:00:00"),
      to_time("2013-10-01 04:00:00"),
    ]
  end

  let(:discrete_hours) do
    [
      to_time("2013-10-01 00:00:00"),
      to_time("2013-10-01 01:00:00"),
      to_time("2013-10-01 02:00:00"),
      to_time("2013-10-01 04:00:00"),
    ]
  end

  describe "#discrete_months" do
    subject{ DateDiscreter.discrete_months(months) }

    context "with continuous" do
      context "with time array" do
        let(:months){ continuous_months }

        it{ should eq [] }
      end

      context "with date array" do
        let(:months){ continuous_months.map(&:to_date) }

        it{ should eq [] }
      end
    end

    context "without continuous" do
      context "with time array" do
        let(:months){ discrete_months }

        it{ should eq [to_time("2013-11-01 00:00:00")] }
      end

      context "with date array" do
        let(:months){ discrete_months.map(&:to_date) }

        it{ should eq [to_date("2013-11-01")] }
      end
    end
  end

  describe "#discrete_days" do
    subject{ DateDiscreter.discrete_days(days) }

    context "with continuous" do
      context "with time array" do
        let(:days){ continuous_days }

        it{ should eq [] }
      end

      context "with date array" do
        let(:days){ continuous_days.map(&:to_date) }

        it{ should eq [] }
      end
    end

    context "without continuous" do
      context "with time array" do
        let(:days){ discrete_days }

        it{ should eq [to_time("2013-10-03 00:00:00")] }
      end

      context "with date array" do
        let(:days){ discrete_days.map(&:to_date) }

        it{ should eq [to_date("2013-10-03")] }
      end
    end
  end

  describe "#discrete_hours" do
    subject{ DateDiscreter.discrete_hours(hours) }

    context "with continuous" do
      let(:hours){ continuous_hours }

      it{ should eq [] }
    end

    context "without continuous" do
      let(:hours){ discrete_hours }

      it{ should eq [to_time("2013-10-01 03:00:00")] }
    end
  end

  describe "#continuous_months?" do
    subject{ DateDiscreter.continuous_months?(months) }

    context "with continuous" do
      let(:months){ continuous_months }

      it{ should be true }
    end

    context "without continuous" do
      let(:months){ discrete_months }

      it{ should be false }
    end
  end

  describe "#continuous_days?" do
    subject{ DateDiscreter.continuous_days?(days) }

    context "with continuous" do
      let(:days){ continuous_days }

      it{ should be true }
    end

    context "without continuous" do
      let(:days){ discrete_days }

      it{ should be false }
    end
  end

  describe "#continuous_hours?" do
    subject{ DateDiscreter.continuous_hours?(hours) }

    context "with continuous" do
      let(:hours){ continuous_hours }

      it{ should be true }
    end

    context "without continuous" do
      let(:hours){ discrete_hours }

      it{ should be false }
    end
  end
end
