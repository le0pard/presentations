require "spec_helper"
require "biggest_word"

RSpec.describe BiggestWord do
  describe ".find_biggest" do
    let(:input) { "" }

    subject { described_class.find_biggest(input) }

    context "zero length input" do
      it { is_expected.to eq(nil) }
    end

    context "have some words" do
      let(:input) { "hello everyone" }
      it { is_expected.to eq("everyone") }
    end

    context "have some another words" do
      let(:input) { "hello everyone who looks smartme webinars_with us" }
      it { is_expected.to eq("webinars_with") }
    end

    context "have one word" do
      let(:input) { "hello" }
      it { is_expected.to eq("hello") }

      context ".size" do
        subject { super().size }
        it { is_expected.to eq(5) }
      end
    end

    context "mock" do
      let(:input) { "test" }
      before { allow(BiggestWord).to receive(:find_biggest).with(input).and_return("test2") }
      it { is_expected.to eq("test2") }
    end
  end
end