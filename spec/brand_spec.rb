require "spec_helper"

  describe Brand do
    describe("#store") do
      it("tells which store it belongs to") do
        test_list = Store.create({:name => "list"})
        test_task = Brand.create({:description => "task", :list_id => test_list.id})
        expect(test_task.list()).to(eq(test_list))
      end
    end
  end

  it("validates presence of description") do
    task = Task.new({:description => ""})
    expect(task.save()).to(eq(false))
  end
end
# end
